from django.urls import path
from galeri.views import galeri, foto, video, kegiatan_fisik_detail, kegiatan_perencanaan_detail

urlpatterns = [
    path("", galeri, name='galeri'),
    path("foto/", foto, name='foto'),
    path("video/", video, name='video'),
    path("Kegiatan-Perencanaan/", kegiatan_perencanaan_detail, name='kegiatan_perencanaan_detail'),
    path("Kegiatan-fisik/", kegiatan_fisik_detail, name='kegiatan_fisik_detail'),
]