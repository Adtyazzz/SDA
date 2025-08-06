# from django.contrib import messages
from django.shortcuts import render, redirect
from rekomtek.forms import RekomendasiTeknisForm
from rekomtek.models import StatusRekomendasiTeknis

# Create your views here.
def pelayanan_rekomtek(request):
    template_name = 'halaman/pelayanan_rekomtek.html'
    return render(request, template_name)

def form_rekomtek(request):
    template_name = 'halaman/form_rekomtek.html'

    if request.method == 'POST':
        form = RekomendasiTeknisForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('sukses_rekomtek')  # redirect ke URL sukses
    else:
        form = RekomendasiTeknisForm()

    context = {'form': form}
    return render(request, template_name, context)

def sukses_rekomtek(request):
    return render(request, 'halaman/sukses.html')

def status_permohonan(request):
    template_name = 'halaman/status_permohonan.html'
    status_list = StatusRekomendasiTeknis.objects.select_related('rekomtek').order_by('-id')
    context = {
        'status_list': status_list
    }
    return render(request, template_name, context)
