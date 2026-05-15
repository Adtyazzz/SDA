from django.utils.html import format_html
from django.contrib import admin
from galeri.models import (
    Foto, FotoKegiatanPerencanaan, Video, 
    KategoriKegiatanFisik, VideoKegiatanPerencanaan, 
    KategoriKegiatanPerencanaan
)

# ================================
# FOTO FISIK
# ================================
class FotoAdmin(admin.ModelAdmin):
    list_display = ['kategori','nama_kegiatan', 'uraian_singkat', 'preview_foto', 'tanggal_kegiatan', 'tanggal_upload', 'aksi']
    search_fields = ['nama_kegiatan']
    list_filter = ['kategori', 'tanggal_kegiatan', 'tanggal_upload']
    ordering = ['-tanggal_upload']

    def preview_foto(self, obj):
        if obj.Foto_dokumentasi:
            return format_html('<img src="{}" style="width: 80px; height: auto; border-radius:6px;" />', obj.Foto_dokumentasi.url)
        return "-"
    preview_foto.short_description = "Preview"

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

# ================================
# FOTO PERENCANAAN
# ================================
class FotoKegiatanPerencanaanAdmin(admin.ModelAdmin):
    list_display = ['nama_kegiatan', 'uraian_singkat', 'preview_foto', 'tanggal_kegiatan', 'tanggal_upload', 'aksi']
    search_fields = ['nama_kegiatan']
    list_filter = ['tanggal_kegiatan', 'tanggal_upload']
    ordering = ['-tanggal_upload']

    def preview_foto(self, obj):
        if obj.Foto_dokumentasi:
            return format_html('<img src="{}" style="width: 80px; height: auto; border-radius:6px;" />', obj.Foto_dokumentasi.url)
        return "-"
    preview_foto.short_description = "Preview"

    def aksi(self, obj):
        return format_html(
            '<div style="display: flex; gap: 5px;">'
            '<a class="btn btn-warning btn-sm" href="{}">Edit</a>'
            '<a class="btn btn-danger btn-sm" href="{}">Hapus</a>'
            '</div>',
            f'/admin/galeri/fotokegiatanperencanaan/{obj.id}/change/',
            f'/admin/galeri/fotokegiatanperencanaan/{obj.id}/delete/',
        )
    aksi.short_description = 'Aksi'

admin.site.register(FotoKegiatanPerencanaan, FotoKegiatanPerencanaanAdmin)
admin.site.register(KategoriKegiatanPerencanaan)

# ================================
# VIDEO FISIK
# ================================
class VideoAdmin(admin.ModelAdmin):
    list_display = ['judul_video', 'uraian_singkat', 'preview_video', 'tanggal_kegiatan', 'tanggal_upload', 'aksi']
    search_fields = ['judul_video']
    list_filter = ['tanggal_kegiatan', 'tanggal_upload']
    ordering = ['-tanggal_upload']

    def preview_video(self, obj):
        if obj.file_video:
            return format_html(
                '<video width="120" height="80" controls>'
                '<source src="{}" type="video/mp4">'
                'Browser tidak mendukung video'
                '</video>',
                obj.file_video.url
            )
        return "-"
    preview_video.short_description = "Preview"

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

# ================================
# VIDEO PERENCANAAN
# ================================
class VideoKegiatanPerencanaanAdmin(admin.ModelAdmin):
    list_display = ['judul_video', 'uraian_singkat', 'preview_video', 'tanggal_kegiatan', 'tanggal_upload', 'aksi']
    search_fields = ['judul_video']
    list_filter = ['tanggal_kegiatan', 'tanggal_upload']
    ordering = ['-tanggal_upload']

    def preview_video(self, obj):
        if obj.file_video:
            return format_html(
                '<video width="120" height="80" controls>'
                '<source src="{}" type="video/mp4">'
                'Browser tidak mendukung video'
                '</video>',
                obj.file_video.url
            )
        return "-"
    preview_video.short_description = "Preview"

    def aksi(self, obj):
        return format_html(
            '<div style="display: flex; gap: 5px;">'
            '<a class="btn btn-warning btn-sm" href="{}">Edit</a>'
            '<a class="btn btn-danger btn-sm" href="{}">Hapus</a>'
            '</div>',
            f'/admin/galeri/videokegiatanperencanaan/{obj.id}/change/',
            f'/admin/galeri/videokegiatanperencanaan/{obj.id}/delete/',
        )
    aksi.short_description = 'Aksi'

admin.site.register(VideoKegiatanPerencanaan, VideoKegiatanPerencanaanAdmin)
