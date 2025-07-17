from django.shortcuts import render


def index(request):
    template_name = 'halaman/index.html'
    context = {
        'title':'ini halaman home'
    }
    return render(request, template_name, context)

def about(request):
    template_name = 'halaman/about.html'
    context = {
        'title': 'ini halaman about'
    }
    return render(request, template_name, context)

def dashboard(request):
    template_name = 'dashboard/base.html'
    context = {
        'title':'ini dashboard'
    }
    return render(request, template_name, context)

def alert(request):
    template_name = 'dashboard/alert.html'
    return render(request, template_name)

def visi_misi(request):
    template_name = 'halaman/visi_misi.html'
    return render(request, template_name)

def tugas_fungsi(request):
    template_name = 'halaman/tugas_fungsi.html'
    return render(request, template_name)

def struktur_organisasi(request):
    template_name = 'halaman/struktur_organisasi.html'
    return render(request, template_name)