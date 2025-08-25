from django.contrib import admin
from hasil_survey_kepuasan.models import Ikm, Hidrologi

# Register your models here.

class IkmAdmin(admin.ModelAdmin):
    list_display = ['judul', 'file', 'tanggal_upload']
    search_fields = ['judul']

admin.site.register(Ikm, IkmAdmin)

class HidrologiAdmin(admin.ModelAdmin):
    list_display = ['judul', 'file', 'tanggal_upload']
    search_fields = ['judul']

admin.site.register(Hidrologi, HidrologiAdmin)