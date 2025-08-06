from django.urls import path
from kelembagaan.views import tkpsda

urlpatterns = [
    path("tkpsda/", tkpsda, name='tkpsda')
]