from django.shortcuts import render
from django.shortcuts import render, get_object_or_404, redirect
from .models import InfrastrukturSda, PekerjaanSda, KategoriInfrastrukturSda
from .forms import PekerjaanSdaForm

# Create your views here.

# bagian admin

def input_pekerjaan(request, infrastruktur_id):
    infrastruktur = get_object_or_404(InfrastrukturSda, id=infrastruktur_id)

    if request.method == 'POST':
        form = PekerjaanSdaForm(request.POST)
        if form.is_valid():
            pekerjaan = form.save(commit=False)
            pekerjaan.infrastruktur = infrastruktur  # Set FK manual
            pekerjaan.save()
            return redirect('nama_url_list_infrastruktur')  # Ganti sesuai kebutuhan
    else:
        form = PekerjaanSdaForm()

    return render(request, 'infrastruktur_sda/input_pekerjaan.html', {
        'form': form,
        'infrastruktur': infrastruktur
    })

def list_infrastruktur(request):
    daftar_infrastruktur = InfrastrukturSda.objects.all().prefetch_related('pekerjaansda_set')
    return render(request, 'halaman/list_infrastruktur.html', {
        'infrastruktur_list': daftar_infrastruktur
    })
# end bagian admin


def infrastruktur(request):
    template_name = 'pembangunan_sda/infrastruktur_sda.html'
    kategori = request.GET.get('kategori')
    if kategori == None:
        # print("ALL")
        infrastruktur = InfrastrukturSda.objects.all()
    else:
        # print("bukan ALL")
        kategori = KategoriInfrastrukturSda.objects.get(nama_kategori=kategori)
        infrastruktur = InfrastrukturSda.objects.filter(kategori=kategori) .order_by('-tgl_buat')
        
    data_kategori = KategoriInfrastrukturSda.objects.all()
    context = {
        'title':'daftar infrastruktur',
        'infrastruktur': infrastruktur,
        'kategori':data_kategori
    }
    return render(request, template_name, context)

def infrastruktur_detail(request, slug):
    template_name = 'pembangunan_sda/infrastruktur_detail.html'
    infrastruktur_detail = InfrastrukturSda.objects.get(slug=slug)
    infrastruktur_list = InfrastrukturSda.objects.exclude(slug=slug).order_by('-id')[:5] 
    pekerjaan_list = PekerjaanSda.objects.filter(infrastruktur=infrastruktur_detail)

    session_key = f'viewed_infrastruktur_{infrastruktur_detail.id}'
    if not request.session.get(session_key):
        infrastruktur_detail.views += 1
        infrastruktur_detail.save(update_fields=['views'])
        request.session[session_key] = True
        
    context = {
        'infrastruktur_detail': infrastruktur_detail,
        'infrastruktur_list': infrastruktur_list,
        'pekerjaan_list': pekerjaan_list,
    }
    return render(request, template_name, context)
