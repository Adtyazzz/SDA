from django.shortcuts import render

# Create your views here.

def pola_wilayah_sungai(request):
    template_name = 'informasi_sda/pola_wilayah_sungai.html'
    return render(request, template_name)

def hari_air_dunia(request):
    template_name = 'informasi_sda/hari_air_dunia.html'
    return render(request, template_name)

def rencana_psda(request):
    template_name = 'informasi_sda/rencana_psda.html'
    return render(request, template_name)

def sebaran_perizinan_sda(request):
    template_name = 'informasi_sda/sebaran_perizinan_sda.html'
    return render(request, template_name)

def pemberdayaan_masyarakat(request):
    template_name = 'informasi_sda/pemberdayaan_masyarakat.html'
    return render(request, template_name)