from django.shortcuts import render
from informasi_sda.models import Polawilayahsungai
from informasi_sda.models import RencanaPSDA
# Create your views here.

def pola_wilayah_sungai(request):
    template_name = 'informasi_sda/pola_wilayah_sungai.html'
    file = Polawilayahsungai.objects.all()
    context = {
        'title': 'Pola Wilayah Sungai',
        'file' : file
    }
    return render(request, template_name, context)

def hari_air_dunia(request):
    template_name = 'informasi_sda/hari_air_dunia.html'
    return render(request, template_name)

def rencana_psda(request):
    template_name = 'informasi_sda/rencana_psda.html'
    file = RencanaPSDA.objects.all()
    context = {
        'title': 'Rencana PSDA Wilayah Sungai',
        'file' : file
    }
    return render(request, template_name, context)

def sebaran_perizinan_sda(request):
    template_name = 'informasi_sda/sebaran_perizinan_sda.html'
    return render(request, template_name)

def pemberdayaan_masyarakat(request):
    template_name = 'informasi_sda/pemberdayaan_masyarakat.html'
    return render(request, template_name)