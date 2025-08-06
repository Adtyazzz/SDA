from django.shortcuts import render
from profil.models import TugasFungsi, VisiMisi

# Create your views here.

def visi_misi(request):
    template_name = 'profil/visi_misi.html'
    visimisi = VisiMisi.objects.first()
    context = {
        'title':'Visi Dan Misi',
        'visimisi': visimisi
    }
    return render(request, template_name, context)

def tugas_fungsi(request):
    template_name = 'profil/tugas_fungsi.html'
    tugasfungsi = TugasFungsi.objects.first()
    context = {
        'title':'Tugas dan Fungsi',
        'tugasfungsi': tugasfungsi
    }
    return render(request, template_name, context)

def struktur_organisasi(request):
    template_name = 'profil/struktur_organisasi.html'
    context = {
        'title':'Struktur Organisasi'
    }
    return render(request, template_name, context)

def sejarah(request):
    template_name = 'profil/sejarah.html'
    context = {
        'title':'Sejarah'
    }
    return render(request, template_name, context)

def lokasi_kantor(request):
    template_name = 'profil/lokasi_kantor.html'
    context = {
        'title':'Lokasi Kantor'
    }
    return render(request, template_name, context)