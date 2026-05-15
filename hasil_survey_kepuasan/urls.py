from django.urls import path
from hasil_survey_kepuasan.views import ikm, pelayanan_hidrologi

urlpatterns = [
    path("Indeks_Kepuasan_Masyarakat/", ikm, name='ikm'),
    path("Pelayanan_Hidrologi_Dan_Kualitas_Air/", pelayanan_hidrologi, name='pelayanan_hidrologi')
]