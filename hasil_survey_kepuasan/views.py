from django.shortcuts import render

# Create your views here.

def ikm(request):
    template_name = 'hasil_survey_kepuasan/ikm.html'
    return render(request, template_name)

def pelayanan_hidrologi(request):
    template_name = 'hasil_survey_kepuasan/pelayanan_hidrologi.html'
    return render(request, template_name)

