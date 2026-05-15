from django.urls import path
from kelembagaan.views import tkpsda, dewan_sda, komisi_irigasi

urlpatterns = [
    path("tkpsda/", tkpsda, name='tkpsda'),
    path("Dewan_Sumber_Daya_Air/", dewan_sda, name='dewan_sda'),
    path("Komisi_Irigasi", komisi_irigasi, name='komisi_irigasi')
]