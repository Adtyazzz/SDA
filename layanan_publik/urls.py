from django.urls import path
from layanan_publik.views import peraturan, sop

urlpatterns = [
    path("peraturan/", peraturan, name='peraturan'),
    path("Sop/", sop, name='sop'),
]