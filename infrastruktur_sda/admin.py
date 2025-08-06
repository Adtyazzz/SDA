from django.contrib import admin
from django.urls import path, reverse
from django.utils.html import format_html
from django.utils.safestring import mark_safe
from django.shortcuts import render, redirect, get_object_or_404

from infrastruktur_sda.models import KategoriInfrastrukturSda, InfrastrukturSda, PekerjaanSda, Post
from .forms import PekerjaanSdaForm


class KategoriInfrastrukturSdaAdmin(admin.ModelAdmin):
    list_display = ['nama_kategori', 'tgl_buat', 'tgl_update']
    search_fields = ['nama_kategori']


class PekerjaanSdaInline(admin.TabularInline):
    model = PekerjaanSda
    extra = 1


class InfrastrukturSdaAdmin(admin.ModelAdmin):
    inlines = [PekerjaanSdaInline]
    change_list_template = "admin/infrastruktur_sda/change_list_custom.html"

    def tombol_input_pekerjaan(self, obj):
        url = reverse('admin:form_pekerjaan_sda', args=[obj.id])
        return format_html(
            '<a class="button" href="{}" style="'
            'display: inline-block; padding: 8px 12px; background: #007bff; color: #fff; '
            'border-radius: 5px; text-decoration: none; min-width: 120px; text-align: center;">'
            'Input Pekerjaan</a>', url
        )
    tombol_input_pekerjaan.short_description = "Aksi"

    def daftar_pekerjaan(self, obj):
        pekerjaan_list = obj.pekerjaan_set.all()
        if pekerjaan_list.exists():
            html = "<ul style='padding-left: 0; list-style: none;'>"
            for p in pekerjaan_list:
                edit_url = reverse('admin:infrastruktur_sda_pekerjaansda_change', args=[p.id])
                delete_url = reverse('admin:infrastruktur_sda_pekerjaansda_delete', args=[p.id])
                html += (
                    "<li style='margin-bottom: 10px;'>"
                    "<div style='display: flex; justify-content: space-between; align-items: center; background: #f8f9fa; padding: 6px 10px; border-radius: 6px;'>"
                    f"<span style='font-size: 14px;'>• {p.tahun} - {p.kontraktor} - {p.sumber_dana}</span>"
                    "<div style='display: flex; gap: 8px;'>"
                    f"<a href='{edit_url}'  style='"
                    "padding: 6px 12px; background: #ffc107; color: black; border-radius: 4px; text-decoration: none; "
                    "min-width: 70px; text-align: center;'>Edit</a>"
                    f"<a href='{delete_url}'  style='"
                    "padding: 6px 12px; background: #dc3545; color: white; border-radius: 4px; text-decoration: none; "
                    "min-width: 70px; text-align: center;'>Hapus</a>"
                    "</div></div></li>"
                )
            html += "</ul>"
            return mark_safe(html)
        return "Belum ada pekerjaan"

    daftar_pekerjaan.short_description = "Daftar Pekerjaan"

    def get_urls(self):
        urls = super().get_urls()
        custom_urls = [
            path('form-pekerjaan/<int:obj_id>/', self.admin_site.admin_view(self.input_pekerjaan), name='form_pekerjaan_sda'),
        ]
        return custom_urls + urls

    def input_pekerjaan(self, request, obj_id):
        obj = get_object_or_404(InfrastrukturSda, id=obj_id)
        if request.method == 'POST':
            form = PekerjaanSdaForm(request.POST)
            if form.is_valid():
                pekerjaan = form.save(commit=False)
                pekerjaan.infrastruktur = obj
                pekerjaan.save()
                self.message_user(request, "Data pekerjaan berhasil disimpan.")
                return redirect('admin:infrastruktur_sda_infrastruktursda_changelist')
        else:
            form = PekerjaanSdaForm()
        return render(request, 'admin/infrastruktur_sda/form_pekerjaan.html', {
            'form': form,
            'object': obj
        })

    list_display = (
        'nama', 'slug', 'kategori', 'tgl_buat', 'tgl_update',
        'tombol_input_pekerjaan', 'daftar_pekerjaan'
    )

    search_fields = ['nama']


class PekerjaanSdaAdmin(admin.ModelAdmin):
    list_display = [
        'infrastruktur','tahun', 'pagu_anggaran',
        'sumber_dana', 'kontraktor', 'konsultan', 'tgl_buat', 'tgl_update'
    ]
    search_fields = ['nama_pekerjaan']


admin.site.register(Post)
admin.site.register(KategoriInfrastrukturSda, KategoriInfrastrukturSdaAdmin)
admin.site.register(InfrastrukturSda, InfrastrukturSdaAdmin)
admin.site.register(PekerjaanSda, PekerjaanSdaAdmin)
