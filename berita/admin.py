from django.contrib import admin
from berita.models import Artikel, Kategori
from django.utils.html import format_html  
# Register your models here.

admin.site.register(Kategori)

class ArtikelAdmin(admin.ModelAdmin):
    list_display = ['judul','author', 'tgl_buat', 'tgl_update', 'aksi']
    search_fields = ['judul']
    actions = ['delete_selected']

    def aksi(self, obj):
        return format_html(
        '<div style="display: flex; gap: 5px;">'
        '<a class="btn btn-warning btn-sm" href="{}">Edit</a>'
        '<a class="btn btn-danger btn-sm" href="{}">Hapus</a>'
        '</div>',
        f'/admin/berita/artikel/{obj.id}/change/',
        f'/admin/berita/artikel/{obj.id}/delete/',
    )

    aksi.short_description = 'Aksi'
admin.site.register(Artikel, ArtikelAdmin)