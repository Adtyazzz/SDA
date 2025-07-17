from django.urls import path
from rekomtek.views import pelayanan_rekomtek


urlpatterns = [
    path("pelayanan_rekomtek/", pelayanan_rekomtek, name='pelayanan_rekomtek' )
]