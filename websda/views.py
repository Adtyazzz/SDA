from django.shortcuts import render
from django.db.models import Q
from django.core.paginator import Paginator
from berita.models import Artikel, Kategori
from galeri.models import Foto, Video


def index(request):
    template_name = 'halaman/index.html'
    data_artikel = Artikel.objects.order_by('-tgl_buat')[:3]
    data_foto = Foto.objects.order_by('-tanggal_kegiatan')[:2]
    data_video = Video.objects.order_by('-tanggal_kegiatan')[:2]
    print(data_artikel)
    context = {
        'title':'ini halaman home',
        'data_artikel': data_artikel,
        'data_foto': data_foto,
        'data_video': data_video
    }
    return render(request, template_name, context)



def about(request):
    template_name = 'halaman/about.html'
    context = {
        'title': 'ini halaman about'
    }
    return render(request, template_name, context)

def artikel_detail(request, slug):
    template_name = 'halaman/artikel.html'
    artikel = Artikel.objects.get(slug=slug)

    session_key = f'viewed_artikel_{artikel.slug}'
    if not request.session.get(session_key):
        artikel.views += 1
        artikel.save(update_fields=['views'])
        request.session[session_key] = True

    berita_terkini = Artikel.objects.exclude(slug=slug).order_by('-id')[:5]  
    context = {
        'title': artikel.judul,
        'artikel': artikel,
        'berita_terkini': berita_terkini,  
    }
    return render(request, template_name, context)


def list_artikel(request):
    template_name = 'halaman/list_artikel.html'
    artikel_queryset = Artikel.objects.all()

    query = request.GET.get('q')
    if query:
        artikel_queryset = artikel_queryset.filter(
            Q(judul__icontains=query) |
            Q(isi__icontains=query)
        )

    kategori = request.GET.get('kategori')
    kategori_obj = None
    if kategori:
        try:
            kategori_obj = Kategori.objects.get(nama=kategori)
            artikel_queryset = artikel_queryset.filter(kategori=kategori_obj)
        except Kategori.DoesNotExist:
            artikel_queryset = Artikel.objects.none()

    artikel_queryset = artikel_queryset.order_by('-tgl_buat')

    paginator = Paginator(artikel_queryset, 6)
    nomor_halaman = request.GET.get('page')
    halaman_berita = paginator.get_page(nomor_halaman)

    data_kategori = Kategori.objects.all()

    context = {
        'query': query,
        'list_artikel': halaman_berita,
        'page_obj': halaman_berita,
        'data_kategori': data_kategori,
        'kategori_terpilih': kategori_obj,
    }
    return render(request, template_name, context)
