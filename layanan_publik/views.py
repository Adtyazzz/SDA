from django.shortcuts import render
from layanan_publik.models import Peraturan, SOP

# Create your views here.
def peraturan(request):
    template_name = 'layanan_publik/peraturan.html'
    file_peraturan = Peraturan.objects.all().order_by('-tanggal_upload')
    context = {
        'title': 'Peraturan',
        'file_peraturan': file_peraturan
    }
    return render(request, template_name, context)

def sop(request):
    template_name = 'layanan_publik/sop.html'
    file_sop = SOP.objects.all().order_by('-tanggal_upload')
    context = {
        'title': 'SOP',
        'file_sop' : file_sop
    }
    return render(request, template_name, context)