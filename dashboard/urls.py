from django.urls import path
from dashboard.views import dashboard, profil, edit_profil, form_permohonan_dashboard,status_permohonan, histori_permohonan, status_diterima, status_diterima_detail, status_ditolak, status_ditolak_detail, form_pelaksanaan_dashboard, pilih_layanan

urlpatterns = [
    path("", dashboard, name='dashboard'),
    path("Layanan/", pilih_layanan, name='pilih_layanan'),
    path("permohonan/", form_permohonan_dashboard, name="form_permohonan_dashboard"),
    path("permohonan-pelaksanaan-pengalihan/", form_pelaksanaan_dashboard, name="form_pelaksanaan_dashboard"),
    path("Status_Permohonan/", status_permohonan, name='status_permohonann'),
    path("profil/", profil, name='profil'),
    path("edit_profil/", edit_profil, name='edit_profil'),
    path("riwayat_permohonan/", histori_permohonan, name="histori_permohonan"),
    path("status/diterima/", status_diterima, name="status_diterima"),
    path("status/diterima/<str:model_name>/<int:pk>/", status_diterima_detail, name="status_diterima_detail"),
    path("status/ditolak/", status_ditolak, name='status_ditolak'),
    path("status/ditolak/<str:model_name>/<int:pk>/", status_ditolak_detail, name="status_ditolak_detail"),
]