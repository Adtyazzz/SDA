from django.contrib import admin
from django.utils.html import format_html  
from .models import Layanan, RekomendasiTeknis, StatusRekomendasiTeknis
# Register your models here.


@admin.register(Layanan)
class LayananAdmin(admin.ModelAdmin):
    list_display = ['nama_layanan']
    search_fields = ['nama_layanan']


@admin.register(RekomendasiTeknis)
class RekomendasiTeknisAdmin(admin.ModelAdmin):
    list_display = ['nama_usulan', 'layanan', 'nama_pemohon', 'tanggal_permohonan']
    list_filter = ['layanan', 'tanggal_permohonan']
    search_fields = ['nama_usulan', 'nama_pemohon', 'lokasi']
    readonly_fields = ['preview_foto']

    def preview_foto(self, obj):
        if obj.foto_lokasi:
            return format_html('<img src="{}" style="max-height:150px;" />', obj.foto_lokasi.url)
        return "(Tidak ada foto)"
    preview_foto.short_description = "Preview Foto Lokasi"


@admin.register(StatusRekomendasiTeknis)
class StatusRekomendasiTeknisAdmin(admin.ModelAdmin):
    list_display = ('id', 'get_nama_pemohon', 'jadwal_kunjungan_lapangan', 'tanggal_kunjungan_lapangan_1', 'tanggal_kunjungan_lapangan_2')
    search_fields = ('rekomtek__nama_pemohon',)

    def get_nama_pemohon(self, obj):
        return obj.rekomtek.nama_pemohon
    get_nama_pemohon.short_description = 'Nama Pemohon'  # Label kolom di admin