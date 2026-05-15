from django.urls import path
from infrastruktur_sda.views import infrastruktur, infrastruktur_detail
from . import views

urlpatterns = [
    path("infrastruktur_sda/", infrastruktur, name='infrastruktur_sda'),
    path('infrastruktur/<int:infrastruktur_id>/input-pekerjaan/', views.input_pekerjaan, name='input_pekerjaan'),
    path("infrastruktur_detail/<slug:slug>", infrastruktur_detail, name='infrastruktur_detail')
]