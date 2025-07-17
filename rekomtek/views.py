from django.shortcuts import render

# Create your views here.
def pelayanan_rekomtek(request):
    template_name = 'halaman/pelayanan_rekomtek.html'
    return render(request, template_name)