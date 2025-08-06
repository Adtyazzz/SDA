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