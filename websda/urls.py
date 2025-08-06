
from django.contrib import admin
from django.urls import path, include

from django.conf import settings
from django.conf.urls.static import static

from websda.views import index, about, artikel_detail, list_artikel
from websda.authentikasi import akun_login, akun_registrasi , akun_logout



urlpatterns = [
    path("admin/", admin.site.urls),
    path("", index, name='index'),
    path("artikel/<slug:slug>", artikel_detail, name='artikel_detail'),
    path("list_artikel/", list_artikel, name='list_artikel'),
    path("about/", about, name='about'),
    path("", include('contact.urls')),
    path("authentikasi/login", akun_login, name='akun_login'),
    path("authentikasi/registrasi", akun_registrasi, name='akun_registrasi'),
    path("authentikasi/logout", akun_logout, name='akun_logout'), 
    path("dashboard/", include('berita.urls')),
    path("Publikasi/", include('infrastruktur_sda.urls')),
    path("profil/", include('profil.urls')),
    path("kelembagaan/", include('kelembagaan.urls')),
    path("pelayanan_rekomtek/", include('rekomtek.urls')),
    path('ckeditor/', include('ckeditor_uploader.urls')),
    path("galeri/", include('galeri.urls')),
    path("perencanaan_&_Kinerja/", include('perencanaan_kinerja.urls')),
    path("Media_informasi/", include('media_informasi.urls')),
    path("Informasi_SDA/", include('informasi_sda.urls')),
    path("Hasil_Survey_Kepuasan/", include('hasil_survey_kepuasan.urls'))

]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
