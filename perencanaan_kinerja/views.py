from django.shortcuts import render
from perencanaan_kinerja.models import Renstra
from perencanaan_kinerja.models import Laporankinerja
# Create your views here.

def renstra_sda(request):
    template_name = 'perencanaan_kinerja/renstra_sda.html'
    file = Renstra.objects.all()
    context = {
        'title' : 'Renstra SDA',
        'file' : file
    }
    return render(request, template_name, context)

def laporan_kinerja(request):
    template_name = 'perencanaan_kinerja/laporan_kinerja.html'
    file = Laporankinerja.objects.all()
    context = {
        'title' : 'Laporan Kinerja DPUPR & PERA 2024',
        'file' : file
    }
    return render(request, template_name, context)