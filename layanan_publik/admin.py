from django.contrib import admin
from layanan_publik.models import Peraturan, SOP

# Register your models here.

class PeraturanAdmin(admin.ModelAdmin):
    list_display = ['judul', 'file', 'tanggal_upload']
    search_fields = ['judul']

admin.site.register(Peraturan, PeraturanAdmin)

class SOPAdmin(admin.ModelAdmin):
    list_display = ['judul', 'file', 'tanggal_upload']
    search_fields = ['judul']

admin.site.register(SOP, SOPAdmin)