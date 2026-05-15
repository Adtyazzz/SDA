from django.urls import path
from media_informasi.views import majalah_banyu, profil_sda, publikasi_hidrologi

urlpatterns = [
    path("Majalah_Banyu/", majalah_banyu, name='majalah_banyu'),
    path("Profil_SDA/", profil_sda, name='profil_sda'),
    path("Publikasi_Hidrologi", publikasi_hidrologi, name='publikasi_hidrologi')
]