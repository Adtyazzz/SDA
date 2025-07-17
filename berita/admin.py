from django.contrib import admin
from berita.models import Artikel
# Register your models here.

class ArtikelAdmin(admin.ModelAdmin):
    list_display = ['judul','author']
    search_fields = ['judul']
admin.site.register(Artikel, ArtikelAdmin)