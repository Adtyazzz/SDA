from django.shortcuts import render
from django.db.models import Q
from galeri.models import Foto,FotoKegiatanPerencanaan,KategoriKegiatanFisik, KategoriKegiatanPerencanaan, Video, VideoKegiatanPerencanaan
from django.core.paginator import Paginator

# Create your views here.
def galeri(request):
    template_name = 'galeri/halaman_galeri.html'
    return render(request, template_name)

def foto(request):
    template_name = 'galeri/foto.html'
    query = request.GET.get('q')

    if query:
        foto_kegiatan = Foto.objects.filter(
            Q(nama_kegiatan__icontains=query) |
            Q(uraian_singkat__icontains=query)
        ).order_by('-tanggal_kegiatan')[:3]

        foto_kegiatan_perencanaan = FotoKegiatanPerencanaan.objects.filter(
            Q(nama_kegiatan__icontains=query) |
            Q(uraian_singkat__icontains=query)
        ).order_by('-tanggal_kegiatan')[:3]

    else:
        foto_kegiatan = Foto.objects.order_by('-tanggal_kegiatan')[:3]
        foto_kegiatan_perencanaan = FotoKegiatanPerencanaan.objects.order_by('-tanggal_kegiatan')[:3]

    context = {
        'title': 'ini halaman foto',
        'foto_kegiatan': foto_kegiatan,
        'foto_kegiatan_perencanaan': foto_kegiatan_perencanaan,
        'query': query
    }
    return render(request, template_name, context)


def video(request):
    template_name = 'galeri/video.html'
    video_kegiatan = Video.objects.order_by('-tanggal_kegiatan')[:3]
    video_kegiatan_perencanaan = VideoKegiatanPerencanaan.objects.order_by('-tanggal_kegiatan')[:3]
    context = {
        'title': 'ini halaman video',
        'video_kegiatan': video_kegiatan,
        'video_kegiatan_perencanaan': video_kegiatan_perencanaan
    }
    return render(request, template_name, context)


def kegiatan_perencanaan_detail(request):
    template_name = 'galeri/kegiatan_perencanaan.html'
    query = request.GET.get('q')
    kategori_id = request.GET.get('kategori')

    # Ambil semua data
    foto_kegiatan_perencanaan = FotoKegiatanPerencanaan.objects.all()
    selected_kategori_id = None

    # Filter berdasarkan kategori
    if kategori_id and kategori_id != 'all':
        foto_kegiatan_perencanaan = foto_kegiatan_perencanaan.filter(kategori_id=kategori_id)
        selected_kategori_id = kategori_id

    # Filter berdasarkan pencarian
    if query:
        foto_kegiatan_perencanaan = foto_kegiatan_perencanaan.filter(
            Q(nama_kegiatan__icontains=query) |
            Q(uraian_singkat__icontains=query)
        )

    # Urutkan dari yang terbaru
    foto_kegiatan_perencanaan = foto_kegiatan_perencanaan.order_by('-tanggal_kegiatan')

    # Ambil semua kategori
    kategori_list = KategoriKegiatanPerencanaan.objects.all()

    # Paginasi
    paginator = Paginator(foto_kegiatan_perencanaan, 6)
    nomor_halaman = request.GET.get('page')
    halaman_kegiatan_perencanaan = paginator.get_page(nomor_halaman)

    context = {
        'title': 'Dokumentasi Kegiatan Perencanaan',
        'foto_kegiatan_perencanaan': halaman_kegiatan_perencanaan,
        'query': query,
        'selected_kategori_id': selected_kategori_id,
        'kategori_list': kategori_list,
    }

    return render(request, template_name, context)


def kegiatan_fisik_detail(request):
    template_name = 'galeri/kegiatan_fisik.html'
    query = request.GET.get('q')
    kategori_id = request.GET.get('kategori')

    # Mulai dari semua data
    foto_kegiatan = Foto.objects.all()
    selected_kategori_id = None

    # Jika kategori dipilih dan bukan 'all'
    if kategori_id and kategori_id != 'all':
        foto_kegiatan = foto_kegiatan.filter(kategori_id=kategori_id)
        selected_kategori_id = kategori_id

    # Filter pencarian (jika ada)
    if query:
        foto_kegiatan = foto_kegiatan.filter(
            Q(nama_kegiatan__icontains=query) |
            Q(uraian_singkat__icontains=query)
        )

    # Urutkan dari yang terbaru
    foto_kegiatan = foto_kegiatan.order_by('-tanggal_kegiatan')

    # Ambil semua kategori
    kategori_list = KategoriKegiatanFisik.objects.all()

    # Paginasi hasil yang sudah difilter
    paginator = Paginator(foto_kegiatan, 6)
    nomor_halaman = request.GET.get('page')
    halaman_kegiatan_fisik = paginator.get_page(nomor_halaman)

    context = {
        'title': 'Dokumentasi Kegiatan Fisik',
        'foto_kegiatan': halaman_kegiatan_fisik,
        'query': query,
        'selected_kategori_id': selected_kategori_id,
        'kategori_list': kategori_list,
    }

    return render(request, template_name, context)


def kegiatan_fisik_video(request):
    template_name = 'galeri/kegiatan_fisik_video.html'
    video_kegiatan = Video.objects.order_by('-tanggal_kegiatan')[:6]
    context = {
        'title': 'Dokumentasi Video Kegiatan Fisik',
        'video_kegiatan': video_kegiatan
    }
    return render(request, template_name, context)

def kegiatan_perencanaan_video(request):
    template_name = 'galeri/kegiatan_perencanaan_video.html'
    video_kegiatan = VideoKegiatanPerencanaan.objects.order_by('-tanggal_kegiatan')[:6]
    context = {
        'title': 'Dokumentasi Video Kegiatan perencanaan',
        'video_kegiatan': video_kegiatan
    }
    return render(request, template_name, context)



