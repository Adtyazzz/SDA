from django.shortcuts import render, redirect
from contact.forms import KontakForm

# Create your views here.
def contact(request):
    template_name = 'halaman/contact.html'
    form = KontakForm()
    success = False

    if request.method == 'POST':
        form = KontakForm(request.POST)
        if form.is_valid():
            form.save()
            success = True  # bisa kamu pakai untuk notif
    context = {
        'form': form,
        'success': success,
    }
    return render(request, template_name, context)
