from django.utils.html import format_html
from django.contrib import admin
from galeri.models import Foto,FotoKegiatanPerencanaan, Video, KategoriKegiatanFisik, KategoriKegiatanPerencanaan

# Register your models here.
class FotoAdmin(admin.ModelAdmin):
    list_display = ['kategori','nama_kegiatan', 'uraian_singkat', 'Foto_dokumentasi', 'tanggal_kegiatan', 'tanggal_upload', 'aksi']
    search_fields = ['nama_kegiatan']

    def aksi(self, obj):
        return format_html(
        '<div style="display: flex; gap: 5px;">'
        '<a class="btn btn-warning btn-sm" href="{}">Edit</a>'
        '<a class="btn btn-danger btn-sm" href="{}">Hapus</a>'
        '</div>',
        f'/admin/galeri/foto/{obj.id}/change/',
        f'/admin/galeri/foto/{obj.id}/delete/',
    )

    aksi.short_description = 'Aksi'   
admin.site.register(Foto, FotoAdmin)
admin.site.register(KategoriKegiatanFisik)


class FotoKegiatanPerencanaanAdmin(admin.ModelAdmin):
    list_display = ['nama_kegiatan', 'uraian_singkat', 'Foto_dokumentasi', 'tanggal_kegiatan', 'tanggal_upload', 'aksi']
    search_fields = ['nama_kegiatan']

    def aksi(self, obj):
        return format_html(
        '<div style="display: flex; gap: 5px;">'
        '<a class="btn btn-warning btn-sm" href="{}">Edit</a>'
        '<a class="btn btn-danger btn-sm" href="{}">Hapus</a>'
        '</div>',
        f'/admin/galeri/foto/{obj.id}/change/',
        f'/admin/galeri/foto/{obj.id}/delete/',
    )

    aksi.short_description = 'Aksi'   
admin.site.register(FotoKegiatanPerencanaan, FotoKegiatanPerencanaanAdmin)
admin.site.register(KategoriKegiatanPerencanaan)


class VideoAdmin(admin.ModelAdmin):
    list_display = ['judul_video', 'uraian_singkat', 'file_video', 'tanggal_kegiatan', 'tanggal_upload', 'aksi']
    search_fields = ['judul_video']

    def aksi(self, obj):
        return format_html(
        '<div style="display: flex; gap: 5px;">'
        '<a class="btn btn-warning btn-sm" href="{}">Edit</a>'
        '<a class="btn btn-danger btn-sm" href="{}">Hapus</a>'
        '</div>',
        f'/admin/galeri/video/{obj.id}/change/',
        f'/admin/galeri/video/{obj.id}/delete/',
    )

    aksi.short_description = 'Aksi'
admin.site.register(Video, VideoAdmin)
