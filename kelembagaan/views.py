from django.shortcuts import render
from kelembagaan.models import TKPSDA

# Create your views here.

def tkpsda(request):
    template_name = 'kelembagaan/tkpsda.html'
    data_tkpsda = TKPSDA.objects.first()
    context = {
        'data_tkpsda': data_tkpsda
    }
    return render(request, template_name, context)


def dewan_sda(request):
    template_name = 'kelembagaan/dewan_sda.html'
    context = {
        'title' : 'Dewan Sumber Daya Air'
    }
    return render(request, template_name, context)


def komisi_irigasi(request):
    template_name = 'kelembagaan/komisi_irigasi.html'
    context = {
        'title' : 'Komisi Irigasi'
    }
    return render(request ,template_name, context)