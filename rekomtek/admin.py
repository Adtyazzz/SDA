from django.contrib import admin
from django.utils.html import format_html  
from .models import Layanan, RekomendasiTeknis, StatusRekomendasiTeknis
# Register your models here.


@admin.register(Layanan)
class LayananAdmin(admin.ModelAdmin):
    list_display = ['nama_layanan', 'aksi']
    search_fields = ['nama_layanan']

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


@admin.register(RekomendasiTeknis)
class RekomendasiTeknisAdmin(admin.ModelAdmin):
    list_display = ['nama_usulan', 'layanan', 'nama_pemohon', 'tanggal_permohonan', 'aksi']
    list_filter = ['layanan', 'tanggal_permohonan']
    search_fields = ['nama_usulan', 'nama_pemohon', 'lokasi']
    readonly_fields = ['preview_foto']

    def preview_foto(self, obj):
        if obj.foto_lokasi:
            return format_html('<img src="{}" style="max-height:150px;" />', obj.foto_lokasi.url)
        return "(Tidak ada foto)"
    preview_foto.short_description = "Preview Foto Lokasi"

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


@admin.register(StatusRekomendasiTeknis)
class StatusRekomendasiTeknisAdmin(admin.ModelAdmin):
    list_display = ( 'get_nama_pemohon', 'jadwal_kunjungan_lapangan', 'tanggal_kunjungan_lapangan_1', 'tanggal_kunjungan_lapangan_2', 'aksi')
    search_fields = ('rekomtek__nama_pemohon',)

    def get_nama_pemohon(self, obj):
        return obj.rekomtek.nama_pemohon
    get_nama_pemohon.short_description = 'Nama Pemohon'  # Label kolom di admin

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