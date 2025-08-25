from django.shortcuts import render


# Create your views here.
def contact(request):
    template_name = 'halaman/contact.html'
    context = {
        'title' : 'Hubungi Kami'
    }
    return render(request, template_name, context)
