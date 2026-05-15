from django.shortcuts import render
from hasil_survey_kepuasan.models import Ikm, Hidrologi

# Create your views here.

def ikm(request):
    template_name = 'hasil_survey_kepuasan/ikm.html'
    file_ikm = Ikm.objects.all().order_by('-tanggal_upload')
    context = {
        'title': 'Indeks Kepuasan Masyarakat',
        'file_ikm' : file_ikm
    }
    return render(request, template_name, context)

def pelayanan_hidrologi(request):
    template_name = 'hasil_survey_kepuasan/pelayanan_hidrologi.html'
    file_hidrologi = Hidrologi.objects.all().order_by('-tanggal_upload')
    context = {
        'title': 'Hidrologi',
        'file_hidrologi' : file_hidrologi
    }
    return render(request, template_name, context)

