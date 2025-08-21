from django.shortcuts import render, redirect
from django.contrib import messages
from dashboard.models import foto_profil
from dashboard.forms import UserUpdateForm, FotoProfilForm
from rekomtek.forms import RekomendasiTeknisForm, IntakeFormSet
from rekomtek.models import StatusRekomendasiTeknis
from django.db.models import Q

from django.contrib.auth.decorators import login_required

# Create your views here.

@login_required(login_url='akun_login')
def dashboard(request):
    template_name = 'dashboard/index.html'
    context = {
        'title':'Dashboard',
    }
    return render(request, template_name, context)


@login_required(login_url='akun_login')
def form_permohonan_dashboard(request):
    template_name = 'dashboard/snippets/form_permohonan.html'

    if request.method == "POST":
        form = RekomendasiTeknisForm(request.POST, request.FILES)
        intake_formset = IntakeFormSet(request.POST, request.FILES, prefix="intake")

        if form.is_valid() and intake_formset.is_valid():
            permohonan = form.save(commit=False)
            permohonan.user = request.user  # simpan siapa yang submit
            permohonan.save()

            # ✅ Tambahkan record status default
            StatusRekomendasiTeknis.objects.create(
                rekomtek=permohonan,
                status="proses"
            )

            # simpan intake formset
            intakes = intake_formset.save(commit=False)
            for intake in intakes:
                intake.rekomtek = permohonan  # foreign key ke permohonan
                intake.save()

            messages.success(request, "Permohonan berhasil dikirim.")
            return redirect("form_permohonan_dashboard")
    else:
        form = RekomendasiTeknisForm()
        intake_formset = IntakeFormSet(prefix="intake")

    context = {
        "title": "Form Permohonan Izin SDA",
        "form": form,
        "intake_formset": intake_formset,
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
