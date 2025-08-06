from django.contrib import admin
from kelembagaan.models import TKPSDA
# Register your models here.

class TKPSDAAdmin(admin.ModelAdmin):
    list_display = ['isi', 'tugas', 'fungsi', 'keanggotaan']
    search_fields = ['isi']
admin.site.register(TKPSDA, TKPSDAAdmin)