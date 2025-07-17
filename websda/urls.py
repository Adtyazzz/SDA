
from django.contrib import admin
from django.urls import path, include

from django.conf import settings
from django.conf.urls.static import static

from websda.views import index, about, dashboard, alert, visi_misi, tugas_fungsi, struktur_organisasi
from websda.authentikasi import akun_login, akun_registrasi , akun_logout



urlpatterns = [
    path("admin/", admin.site.urls),
    path("", index, name='index'),
    path("about/", about, name='about'),
    path("dashboard/", dashboard, name='dashboard'),
    path("authentikasi/login", akun_login, name='akun_login'),
    path("authentikasi/registrasi", akun_registrasi, name='akun_registrasi'),
    path("authentikasi/logout", akun_logout, name='akun_logout'), 
    path("alert/", alert, name='alert'),
    path("visi-misi/", visi_misi, name='visi_misi'),
    path("tugas_fungsi/", tugas_fungsi, name='tugas_fungsi'),
    path("struktur_organisasi/", struktur_organisasi, name='struktur_organisasi'),
    path("pelayanan_rekomtek/", include('rekomtek.urls')),

]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
