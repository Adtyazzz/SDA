from django.shortcuts import render, redirect
from rekomtek.forms import RekomendasiTeknisForm, IntakeFormSet
from rekomtek.models import StatusRekomendasiTeknis

def pelayanan_rekomtek(request):
    return render(request, 'halaman/pelayanan_rekomtek.html')

def form_rekomtek(request):
    template_name = 'halaman/form_rekomtek.html'

    dokumen_list = [
        ('a. Gambar detail desain, spektek, jadwal dan metode pelaksanaan', 'dokumen_desain'),
        ('b. Izin lingkungan (rekomendasi AMDAL/UKL-UPL/SPPL)', 'dokumen_izin_lingkungan'),
        ('c. Berita acara pertemuan konsultasi masyarakat (Hasil konsultasi publik)', 'dokumen_berita_acara'),
        ('d. Jenis prasarana dan teknologi yang akan digunakan (dokumentasi pompa, intake, WTP, flowmeter)', 'dokumen_prasarana'),
        ('e. Dokumen kepemilikan/penguasaan/perjanjian lahan yang akan digunakan', 'dokumen_kepemilikan'),
        ('f. Perizinan berusaha yang telah dimiliki pemohon sesuai dengan kegiatan usaha', 'dokumen_perizinan'),
        ('g. Proposal teknis', 'dokumen_proposal'),
        ('h. Rencana operasi dan pemeliharaan pada sumber air', 'dokumen_rencana_operasi'),
        ('i. Surat permohonan izin pengusahaan sumber daya air', 'dokumen_permohonan'),
    ]

    if request.method == 'POST':
        form = RekomendasiTeknisForm(request.POST, request.FILES)
        intake_formset = IntakeFormSet(request.POST, request.FILES, prefix='intake')

        if form.is_valid() and intake_formset.is_valid():
            rekomtek = form.save()
            intakes = intake_formset.save(commit=False)
            for intake in intakes:
                intake.rekomtek = rekomtek
                intake.save()
            return redirect('sukses_rekomtek')

    else:
        form = RekomendasiTeknisForm()
        intake_formset = IntakeFormSet(prefix='intake')

    context = {
        'form': form,
        'intake_formset': intake_formset,
        'dokumen_list': dokumen_list
    }
    return render(request, template_name, context)


def sukses_rekomtek(request):
    return render(request, 'halaman/sukses.html')

def status_permohonan(request):
    template_name = 'halaman/status_permohonan.html'
    status_list = StatusRekomendasiTeknis.objects.select_related('rekomtek').order_by('-id')
    return render(request, template_name, {'status_list': status_list})
