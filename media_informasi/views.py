from django.shortcuts import render
from media_informasi.models import MajalahBanyu

# Create your views here.

def majalah_banyu(request):
    template_name = 'media_informasi/majalah_banyu.html'
    majalah_banyu = MajalahBanyu.objects.all().order_by('-id')  # urut dari terbaru
    
    context = {
        "title": "Majalah Banyu",
        "majalah_banyu": majalah_banyu,
        "total": majalah_banyu.count(),
    }
    return render(request, template_name, context)

def profil_sda(request):
    template_name = 'media_informasi/profil_sda.html'
    return render(request, template_name)

def publikasi_hidrologi(request):
    template_name = 'media_informasi/publikasi_hidrologi.html'
    return render(request, template_name)