from django.contrib import admin

# Register your models here.
from django.contrib import admin
from .models import VisiMisi, TugasFungsi, StrukturOrganisasi, Sejarah, LokasiKantor


class VisiMisiAdmin(admin.ModelAdmin):
    list_display = ['visi', 'misi', 'tgl_dibuat', 'tgl_diperbarui']
admin.site.register(VisiMisi, VisiMisiAdmin)


class TugasFungsiAdmin(admin.ModelAdmin):
    list_display = ['tugas', 'fungsi', 'tgl_dibuat', 'tgl_diperbarui']
    search_fields = ['tugas', 'fungsi']
admin.site.register(TugasFungsi, TugasFungsiAdmin)

class StrukturOrganisasiAdmin(admin.ModelAdmin):
    list_display = ['nama', 'jabatan', 'foto', 'urutan', 'tgl_dibuat', 'tgl_diperbarui']

admin.site.register(StrukturOrganisasi, StrukturOrganisasiAdmin )
admin.site.register(Sejarah)
admin.site.register(LokasiKantor)
