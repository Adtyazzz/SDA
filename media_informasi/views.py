from django.shortcuts import render

# Create your views here.

def majalah_banyu(request):
    template_name = 'media_informasi/majalah_banyu.html'
    return render(request, template_name)

def profil_sda(request):
    template_name = 'media_informasi/profil_sda.html'
    return render(request, template_name)

def publikasi_hidrologi(request):
    template_name = 'media_informasi/publikasi_hidrologi.html'
    return render(request, template_name)