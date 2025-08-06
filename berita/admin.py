from django.contrib import admin
from berita.models import Artikel, Kategori
# Register your models here.

admin.site.register(Kategori)

class ArtikelAdmin(admin.ModelAdmin):
    list_display = ['judul','author', 'tgl_buat', 'tgl_update']
    search_fields = ['judul']
    actions = ['delete_selected']
admin.site.register(Artikel, ArtikelAdmin)