from django.contrib import admin
from django.utils.html import format_html
from .models import TKPSDA


@admin.register(TKPSDA)
class TKPSDAAdmin(admin.ModelAdmin):
    list_display = ("preview_isi", "preview_tugas", "preview_fungsi")

    def preview_isi(self, obj):
        if obj.isi:
            return format_html(obj.isi[:200] + ("..." if len(obj.isi) > 200 else ""))
        return "-"
    preview_isi.short_description = "Isi"

    def preview_tugas(self, obj):
        if obj.tugas:
            return format_html(obj.tugas[:200] + ("..." if len(obj.tugas) > 200 else ""))
        return "-"
    preview_tugas.short_description = "Tugas"

    def preview_fungsi(self, obj):
        if obj.fungsi:
            return format_html(obj.fungsi[:200] + ("..." if len(obj.fungsi) > 200 else ""))
        return "-"
    preview_fungsi.short_description = "Fungsi"

    def preview_keanggotaan(self, obj):
        if obj.keanggotaan:
            return format_html(obj.keanggotaan[:200] + ("..." if len(obj.keanggotaan) > 200 else ""))
        return "-"
    preview_keanggotaan.short_description = "Keanggotaan"
