from django.urls import path
from informasi_sda.views import pola_wilayah_sungai, hari_air_dunia, rencana_psda, sebaran_perizinan_sda, pemberdayaan_masyarakat

urlpatterns = [
    path("Pola_Wilayah_Sungai/", pola_wilayah_sungai, name='pola_wilayah_sungai'),
    path("Hari_Air_Dunia/", hari_air_dunia, name='hari_air_dunia'),
    path("Rencana_PSDA_WIlayah_Sungai/", rencana_psda, name='rencana_psda'),
    path("Sebaran_Perizinan_SDA/", sebaran_perizinan_sda, name='sebaran_perizinan_sda'),
    path("Pemberdayaan_Masyarkat", pemberdayaan_masyarakat, name='pemberdayaan_masyarakat')
]