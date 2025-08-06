from django.shortcuts import render

# Create your views here.

def renstra_sda(request):
    template_name = 'perencanaan_kinerja/renstra_sda.html'
    return render(request, template_name)

def laporan_kinerja(request):
    template_name = 'perencanaan_kinerja/laporan_kinerja.html'
    return render(request, template_name)
