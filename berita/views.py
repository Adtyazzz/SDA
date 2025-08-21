from django.shortcuts import render, redirect
from berita.models import Kategori, Artikel



# Create your views here.


def Kategori_list(request):
    template_name = 'dashboard/snippets/kategori_list.html'
    kategori = Kategori.objects.all()
    print('kategori')
    context = {
        'title':'ini kategori',
        'kategori': kategori                                              
    }
    return render(request, template_name, context)

def kategori_add(request):
    template_name = 'dashboard/snippets/kategori_add.html'
    if request.method == "POST":
        nama_input = request.POST.get('nama_kategori')
        Kategori.objects.create(
            nama = nama_input
        )
        return redirect(Kategori_list)
       
    context = {
        'title':'tambah kategori',
    }
    return render(request, template_name, context)

def kategori_update (request, id_kategori):
    template_name = 'dashboard/snippets/kategori_update.html'
    try:
        kategori = Kategori.objects.get(id=id_kategori)
    except:
        return redirect(Kategori_list)
    
    if request.method == "POST":
        nama_input = request.POST.get('nama_kategori')
        kategori.nama = nama_input
        kategori.save()
        return redirect(Kategori_list)
    context = {
        'title': 'edit kategori',
        'kategori': kategori
    }
    return render(request, template_name, context)

def kategori_delete(request, id_kategori):
    try:
        Kategori.objects.get(id=id_kategori).delete()
    except:
        pass
    return redirect(Kategori_list)




