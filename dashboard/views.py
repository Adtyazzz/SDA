from django.shortcuts import render, redirect
from django.contrib import messages
from dashboard.models import foto_profil
from dashboard.forms import UserUpdateForm, FotoProfilForm
from rekomtek.forms import RekomendasiTeknisForm, IntakeFormSet
from rekomtek.models import StatusRekomendasiTeknis, RekomendasiTeknis
from django.db.models import Q
from dashboard.models import foto_profil
from django.shortcuts import get_object_or_404


from django.contrib.auth.decorators import login_required

# Create your views here.

@login_required(login_url='akun_login')
def dashboard(request):
    template_name = 'dashboard/index.html'
    file_foto = foto_profil.objects.filter(user=request.user).first()

    # Query StatusRekomendasiTeknis berdasarkan user yang login
    qs = StatusRekomendasiTeknis.objects.filter(user=request.user)

    total_permohonan = qs.count()
    total_diterima = qs.filter(status="diterima").count()
    total_ditolak = qs.filter(status="ditolak").count()
    total_proses = qs.filter(status="proses").count()

    context = {
        'title': 'Dashboard',
        'file_foto': file_foto,
        "total_permohonan": total_permohonan,
        "total_diterima": total_diterima,
        "total_ditolak": total_ditolak,
        "total_proses": total_proses,
    }
    return render(request, template_name, context)

@login_required(login_url='akun_login')
def form_permohonan_dashboard(request):
    template_name = 'dashboard/snippets/form_permohonan.html'

    if request.method == "POST":
        form = RekomendasiTeknisForm(request.POST, request.FILES)
        intake_formset = IntakeFormSet(request.POST, request.FILES, prefix="intake")

        if form.is_valid() and intake_formset.is_valid():
            # Simpan permohonan
            permohonan = form.save(commit=False)
            permohonan.user = request.user  # simpan siapa yang submit
            permohonan.save()

            # Simpan status default dengan user (lebih aman)
            StatusRekomendasiTeknis.objects.create(
                rekomtek=permohonan,
                user=request.user if request.user.is_authenticated else None,
                status="proses"
            )

            # Simpan intake formset
            intakes = intake_formset.save(commit=False)
            for intake in intakes:
                intake.rekomtek = permohonan  # foreign key ke permohonan
                intake.save()

            messages.success(request, "Permohonan berhasil dikirim.")
            return redirect("form_permohonan_dashboard")
    else:
        form = RekomendasiTeknisForm()
        intake_formset = IntakeFormSet(prefix="intake")

    # Ambil foto profil user
    file_foto = foto_profil.objects.filter(user=request.user).first()

    context = {
        "title": "Form Permohonan Izin SDA",
        "form": form,
        "intake_formset": intake_formset,
        "file_foto": file_foto,
    }
    return render(request, template_name, context)


@login_required(login_url='akun_login')
def status_permohonan(request):
    template_name = 'dashboard/snippets/status_permohonan.html'
    query = request.GET.get('q', '')  # ambil parameter ?q=
    
    status_list = StatusRekomendasiTeknis.objects.select_related('rekomtek').order_by('-id')

    if query:
        status_list = status_list.filter(
            Q(rekomtek__nama_pemohon__icontains=query) |
            Q(rekomtek__nama_perusahaan__icontains=query)
        )

    context = {
        'title' : 'Status Permohonan',
        'status_list': status_list,
        'query': query,
    }
    return render(request, template_name, context)

@login_required(login_url='akun_login')
def profil(request):
    template_name = 'dashboard/snippets/profil.html'
    profil, created = foto_profil.objects.get_or_create(user=request.user)
    context = {
        'title': 'Profil',
        'profil': profil
    }
    return render(request, template_name, context)





@login_required(login_url='akun_login')
def edit_profil(request):
    template_name = 'dashboard/snippets/edit_profil.html'
    profil, created = foto_profil.objects.get_or_create(user=request.user)

    if request.method == 'POST':
        user_form = UserUpdateForm(request.POST, instance=request.user)
        foto_form = FotoProfilForm(request.POST, request.FILES, instance=profil)

        if user_form.is_valid() and foto_form.is_valid():
            user_form.save()
            foto_form.save()
            messages.success(request, 'Profil berhasil diperbarui!')
            return redirect('edit_profil')
    else:
        user_form = UserUpdateForm(instance=request.user)
        foto_form = FotoProfilForm(instance=profil)

    # pakai context dict
    context = {
        'title': 'Edit Profil',
        'user_form': user_form,
        'foto_form': foto_form,
        'profil': profil,  # biar bisa dipanggil avatar langsung di template
    }
    return render(request, template_name, context)


@login_required
def histori_permohonan(request):
    template_name = 'dashboard/snippets/histori.html'
    status = request.GET.get("status", "all")
    data = RekomendasiTeknis.objects.filter(user=request.user)

    context = {
        'title': 'Riwayat Permohonan',
        'data' : data,
        'status': status
    }
    return render(request, template_name, context)

@login_required
def status_diterima(request):
    template_name = 'dashboard/snippets/status_diterima.html'
    data = RekomendasiTeknis.objects.filter(status_rekomtek__status="diterima")
    context = {
        'title': 'Status Diterima',
        'data' : data
    }
    return render(request, template_name, context)

@login_required
def status_diterima_detail(request, pk):
    template_name = 'dashboard/snippets/status_diterima_detail.html'
    data = get_object_or_404(RekomendasiTeknis, pk=pk)

    # Ambil status terakhir (kalau ada banyak)
    status = data.status_rekomtek.last()

    context = {
        'title': 'Detail Permohonan Diterima',
        'data': data,
        'status': status
    }
    return render(request, template_name, context)

