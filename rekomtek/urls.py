from django.urls import path
from rekomtek.views import pelayanan_rekomtek, form_rekomtek, sukses_rekomtek, status_permohonan


urlpatterns = [
    path("pelayanan_rekomtek/", pelayanan_rekomtek, name='pelayanan_rekomtek' ),
    path('form-rekomendasi_teknis/', form_rekomtek, name='form_rekomtek'),
    path('sukses/', sukses_rekomtek, name='sukses_rekomtek'),
    path('status-permohonan/', status_permohonan, name='status_permohonan'),

]