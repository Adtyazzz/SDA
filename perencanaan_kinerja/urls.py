from django.urls import path
from perencanaan_kinerja.views import renstra_sda, laporan_kinerja

urlpatterns = [
    path("renstra_sda/", renstra_sda, name='renstra_sda'),
    path("laporan_kinerja/", laporan_kinerja, name='laporan_kinerja')
]