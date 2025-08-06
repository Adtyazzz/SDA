from django.urls import path
from profil.views import tugas_fungsi, visi_misi, struktur_organisasi, sejarah, lokasi_kantor

urlpatterns = [
    path("tugas-fungsi/", tugas_fungsi, name='tugas_fungsi'),
    path("visi-misi/", visi_misi, name='visi_misi'),
    path("struktur-organisasi/", struktur_organisasi, name='struktur_organisasi'),
    path("sejarah/", sejarah, name='sejarah'),
    path("lokasi-kantor/", lokasi_kantor, name='lokasi_kantor'),
]