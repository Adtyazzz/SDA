from django.urls import path
from dashboard.views import dashboard, profil, edit_profil, form_permohonan_dashboard,status_permohonan

urlpatterns = [
    path("", dashboard, name='dashboard'),
    path("permohonan/", form_permohonan_dashboard, name="form_permohonan_dashboard"),
    path("Status_Permohonan/", status_permohonan, name='status_permohonann'),
    path("profil/", profil, name='profil'),
    path("edit_profil/", edit_profil, name='edit_profil')
]