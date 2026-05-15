import datetime
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from django.db.models import Q
from django.contrib.auth.decorators import login_required

from dashboard.utils import generate_nomor_surat
from dashboard.models import foto_profil
from dashboard.forms import UserUpdateForm, FotoProfilForm
from rekomtek.forms import RekomendasiTeknisForm, IntakeFormSet, PelaksanaanKontruksiDanPengalihanAirForm
from rekomtek.models import StatusRekomendasiTeknis, RekomendasiTeknis, PelaksanaanKontruksiDanPengalihanAir


@login_required(login_url='akun_login')
def dashboard(request):
    template_name = 'dashboard/index.html'
    file_foto = foto_profil.objects.filter(user=request.user).first()
    qs = StatusRekomendasiTeknis.objects.filter(user=request.user)

    context = {
        'title': 'Dashboard',
        'file_foto': file_foto,
        "total_permohonan": qs.count(),
        "total_diterima": qs.filter(status="diterima").count(),
        "total_ditolak": qs.filter(status="ditolak").count(),
        "total_proses": qs.filter(status="proses").count(),
    }
    return render(request, template_name, context)

@login_required
def pilih_layanan(request):
    template_name = 'dashboard/snippets/pilih_layanan.html'
    context = {
        'title' : 'pilih layanan'
    }
    return render(request, template_name, context)

    

@login_required(login_url='akun_login')
def form_permohonan_dashboard(request):
    template_name = 'dashboard/snippets/form_permohonan.html'

    mode = request.GET.get('mode', 'baru')  # baru/perpanjangan
    cari_nomor = request.GET.get('nomor', '').strip()

    initial = {'jenis_permohonan': 'baru'}
    intake_initial = []
    permohonan_lama_obj = None

    # Prefill kalau perpanjangan
    if mode == 'perpanjangan' and cari_nomor:
        permohonan_lama_obj = RekomendasiTeknis.objects.filter(
            nomor_surat=cari_nomor, user=request.user
        ).first()
        if permohonan_lama_obj:
            initial.update({
                'jenis_permohonan': 'perpanjangan',
                'permohonan_lama': permohonan_lama_obj.pk,
                'nama_pemohon': permohonan_lama_obj.nama_pemohon,
                'kontak_pemohon': permohonan_lama_obj.kontak_pemohon,
                'email_pemohon': permohonan_lama_obj.email_pemohon,
                'layanan': permohonan_lama_obj.layanan_id,
                'nama_perusahaan': permohonan_lama_obj.nama_perusahaan,
                'nama_direktur': permohonan_lama_obj.nama_direktur,
                'alamat_perusahaan': permohonan_lama_obj.alamat_perusahaan,
                'tanggal_permohonan_sebelumnya': permohonan_lama_obj.tanggal_permohonan,
            })
            for i in permohonan_lama_obj.intakes.all():
                intake_initial.append({
                    'sumber_air': i.sumber_air,
                    'kelurahan_desa': i.kelurahan_desa,
                    'kecamatan': i.kecamatan,
                    'kabupaten_kota': i.kabupaten_kota,
                    'provinsi': i.provinsi,
                    'titik_koordinat': i.titik_koordinat,
                    'tujuan_pemanfaatan': i.tujuan_pemanfaatan,
                    'cara_pengambilan_air': i.cara_pengambilan_air,
                    'cara_pembuangan_air': i.cara_pembuangan_air,
                    'volume_pengambilan': i.volume_pengambilan,
                    'lama_waktu_pengambilan': i.lama_waktu_pengambilan,
                    'jenis_pompa': i.jenis_pompa,
                    'kapasitas_pompa': i.kapasitas_pompa,
                })
            messages.info(
                request,
                f"Data permohonan lama ditemukan: {permohonan_lama_obj.nomor_surat}. Silakan perbarui bila perlu."
            )
        else:
            messages.warning(request, "Nomor permohonan tidak ditemukan atau bukan milik Anda.")
            mode = 'perpanjangan'

    # Mapping kode layanan
    LAYANAN_MAPPING = {
        "Rekomendasi Teknis Izin Pengusahaan Sumber Daya Air": "PSDA",
        "Rekomendasi Teknis Izin Penggunaan Sumber Daya Air": "PGSDA",
    }

    # Handle POST
    if request.method == "POST":
        form = RekomendasiTeknisForm(request.POST, request.FILES)
        intake_formset = IntakeFormSet(request.POST, request.FILES, prefix="intake")

        if form.is_valid() and intake_formset.is_valid():
            permohonan = form.save(commit=False)
            permohonan.user = request.user

            # nomor_surat otomatis
            if not permohonan.nomor_surat:
                layanan = form.cleaned_data.get("layanan")
                kode_layanan = LAYANAN_MAPPING.get(
                    layanan.nama_layanan if layanan else "",
                    "UNK"
                )
                permohonan.nomor_surat = generate_nomor_surat(
                    RekomendasiTeknis,
                    kode_layanan
                )

            if form.cleaned_data.get('jenis_permohonan') == 'perpanjangan':
                perm_lama = form.cleaned_data.get('permohonan_lama')
                if perm_lama:
                    permohonan.permohonan_lama = perm_lama
                permohonan.jenis_permohonan = 'perpanjangan'
            else:
                permohonan.jenis_permohonan = 'baru'

            permohonan.save()

            StatusRekomendasiTeknis.objects.create(
                rekomtek=permohonan,
                user=request.user,
                status="proses"
            )

            intakes = intake_formset.save(commit=False)
            for intake in intakes:
                intake.rekomtek = permohonan
                intake.save()

            messages.success(
                request,
                f"Permohonan berhasil dikirim dengan nomor surat {permohonan.nomor_surat}."
            )
            return redirect("form_permohonan_dashboard")
    else:
        form = RekomendasiTeknisForm(initial=initial)
        intake_formset = IntakeFormSet(prefix="intake")
        for f, init in zip(intake_formset.forms, intake_initial):
            for k, v in init.items():
                if k in f.fields:
                    f.fields[k].initial = v

    file_foto = foto_profil.objects.filter(user=request.user).first()
    context = {
        "title": "Form Permohonan Izin SDA",
        "form": form,
        "intake_formset": intake_formset,
        "file_foto": file_foto,
        "mode": mode,
        "cari_nomor": cari_nomor,
    }
    return render(request, template_name, context)



@login_required(login_url='akun_login')
def form_pelaksanaan_dashboard(request):
    template_name = 'dashboard/snippets/form_pelaksanaan.html'

    mode = request.GET.get('mode', 'baru')  # baru/perpanjangan
    cari_nomor = request.GET.get('nomor', '').strip()

    initial = {'jenis_permohonan': 'baru'}
    permohonan_lama_obj = None

    # Prefill kalau perpanjangan
    if mode == 'perpanjangan' and cari_nomor:
        permohonan_lama_obj = PelaksanaanKontruksiDanPengalihanAir.objects.filter(
            nomor_surat=cari_nomor, user=request.user
        ).first()
        if permohonan_lama_obj:
            initial.update({
                'jenis_permohonan': 'perpanjangan',
                'permohonan_lama': permohonan_lama_obj.pk,
                'nama_pemohon': permohonan_lama_obj.nama_pemohon,
                'kontak_pemohon': permohonan_lama_obj.kontak_pemohon,
                'email_pemohon': permohonan_lama_obj.email_pemohon,
                'layanan': permohonan_lama_obj.layanan_id,
                'nama_perusahaan': permohonan_lama_obj.nama_perusahaan,
                'nama_direktur': permohonan_lama_obj.nama_direktur,
                'alamat_perusahaan': permohonan_lama_obj.alamat_perusahaan,
            })
            messages.info(
                request,
                f"Data permohonan lama ditemukan: {permohonan_lama_obj.nomor_surat}. Silakan perbarui bila perlu."
            )
        else:
            messages.warning(request, "Nomor permohonan tidak ditemukan atau bukan milik Anda.")
            mode = 'perpanjangan'

    # Mapping kode layanan (berdasarkan nama layanan)
    LAYANAN_MAPPING = {
        "pelaksanaan konstruksi pada sumber air": "PK",
        "pengalihan alur sungai": "PAS",
    }

    # Handle POST
    if request.method == "POST":
        form = PelaksanaanKontruksiDanPengalihanAirForm(request.POST, request.FILES)

        if form.is_valid():
            permohonan = form.save(commit=False)
            permohonan.user = request.user

            # nomor_surat otomatis
            if not permohonan.nomor_surat:
                layanan = form.cleaned_data.get("layanan")
                nama_layanan = layanan.nama_layanan.strip().lower() if layanan else ""
                kode_layanan = LAYANAN_MAPPING.get(nama_layanan, "UNK")

                permohonan.nomor_surat = generate_nomor_surat(
                    PelaksanaanKontruksiDanPengalihanAir,
                    kode_layanan
                )

            if form.cleaned_data.get('jenis_permohonan') == 'perpanjangan':
                perm_lama = form.cleaned_data.get('permohonan_lama')
                if perm_lama:
                    permohonan.permohonan_lama = perm_lama
                permohonan.jenis_permohonan = 'perpanjangan'
            else:
                permohonan.jenis_permohonan = 'baru'

            permohonan.save()

            # sesuaikan model status kalau ada
            StatusRekomendasiTeknis.objects.create(
                pelaksanaan=permohonan,
                user=request.user,
                status="proses"
            )

            messages.success(
                request,
                f"Permohonan berhasil dikirim dengan nomor surat {permohonan.nomor_surat}."
            )
            return redirect("form_pelaksanaan_dashboard")
    else:
        form = PelaksanaanKontruksiDanPengalihanAirForm(initial=initial)

    file_foto = foto_profil.objects.filter(user=request.user).first()
    context = {
        "title": "Form Permohonan Pelaksanaan & Pengalihan Air",
        "form": form,
        "file_foto": file_foto,
        "mode": mode,
        "cari_nomor": cari_nomor,
    }
    return render(request, template_name, context)




@login_required(login_url='akun_login')
def status_permohonan(request):
    template_name = 'dashboard/snippets/status_permohonan.html'
    query = request.GET.get('q', '')
    status_list = StatusRekomendasiTeknis.objects.select_related('rekomtek').order_by('-id')

    if query:
        status_list = status_list.filter(
            Q(rekomtek__nama_pemohon__icontains=query) |
            Q(rekomtek__nama_perusahaan__icontains=query)
        )

    context = {
        'title': 'Status Permohonan',
        'status_list': status_list,
        'query': query,
    }
    return render(request, template_name, context)


@login_required(login_url='akun_login')
def profil(request):
    template_name = 'dashboard/snippets/profil.html'
    profil, _ = foto_profil.objects.get_or_create(user=request.user)

    context = {
        'title': 'Profil',
        'profil': profil,
    }
    return render(request, template_name, context)


@login_required(login_url='akun_login')
def edit_profil(request):
    template_name = 'dashboard/snippets/edit_profil.html'
    profil, _ = foto_profil.objects.get_or_create(user=request.user)

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

    context = {
        'title': 'Edit Profil',
        'user_form': user_form,
        'foto_form': foto_form,
        'profil': profil,
    }
    return render(request, template_name, context)


@login_required(login_url='akun_login')
def histori_permohonan(request):
    template_name = 'dashboard/snippets/histori.html'
    data = RekomendasiTeknis.objects.filter(user=request.user)

    context = {
        'title': 'Riwayat Permohonan',
        'data': data,
        'status': request.GET.get("status", "all"),
    }
    return render(request, template_name, context)


# ====================== STATUS DITERIMA ======================
@login_required(login_url='akun_login')
def status_diterima(request):
    template_name = 'dashboard/snippets/status_diterima.html'

    data_rekomtek = RekomendasiTeknis.objects.filter(
        status_rekomtek__status="diterima",
        user=request.user
    )

    data_pelaksanaan = PelaksanaanKontruksiDanPengalihanAir.objects.filter(
        status_pelaksanaan__status="diterima",   # pastikan field relasi status ada
        user=request.user
    )

    context = {
        'title': 'Status Diterima',
        'data_rekomtek': data_rekomtek,
        'data_pelaksanaan': data_pelaksanaan,
    }
    return render(request, template_name, context)


@login_required(login_url='akun_login')
def status_diterima_detail(request, model_name, pk):
    template_name = 'dashboard/snippets/status_diterima_detail.html'

    if model_name == "rekomtek":
        data = get_object_or_404(RekomendasiTeknis, pk=pk, user=request.user)
        status = data.status_rekomtek.last()
    elif model_name == "pelaksanaan":
        data = get_object_or_404(PelaksanaanKontruksiDanPengalihanAir, pk=pk, user=request.user)
        status = data.status_pelaksanaan.last()
    else:
        raise ValueError("Model tidak dikenali!")

    context = {
        'title': 'Detail Permohonan Diterima',
        'data': data,
        'status': status,
    }
    return render(request, template_name, context)


# ====================== STATUS DITOLAK ======================
@login_required(login_url='akun_login')
def status_ditolak(request):
    template_name = 'dashboard/snippets/status_ditolak.html'

    data_rekomtek = RekomendasiTeknis.objects.filter(
        status_rekomtek__status="ditolak",
        user=request.user
    )

    data_pelaksanaan = PelaksanaanKontruksiDanPengalihanAir.objects.filter(
        status_pelaksanaan__status="ditolak",   # pastikan field relasi status ada
        user=request.user
    )

    context = {
        'title': 'Status Ditolak',
        'data_rekomtek': data_rekomtek,
        'data_pelaksanaan': data_pelaksanaan,
    }
    return render(request, template_name, context)


@login_required(login_url='akun_login')
def status_ditolak_detail(request, model_name, pk):
    template_name = 'dashboard/snippets/status_ditolak_detail.html'

    if model_name == "rekomtek":
        data = get_object_or_404(RekomendasiTeknis, pk=pk, user=request.user)
        status = data.status_rekomtek.last()
    elif model_name == "pelaksanaan":
        data = get_object_or_404(PelaksanaanKontruksiDanPengalihanAir, pk=pk, user=request.user)
        status = data.status_pelaksanaan.last()
    else:
        raise ValueError("Model tidak dikenali!")

    context = {
        'title': 'Detail Permohonan Ditolak',
        'data': data,
        'status': status,
    }
    return render(request, template_name, context)
