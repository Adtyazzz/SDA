from django.contrib import admin
from .models import PesanKontak  # ganti dengan nama model kamu
# Register your models here.
    
class BulanFilter(admin.SimpleListFilter):
    title = 'Bulan Kirim'
    parameter_name = 'bulan'
    
    def lookups(self, request, model_admin):
        bulan_lookup = [
            ('1', 'Januari'),
            ('2', 'Februari'),
            ('3', 'Maret'),
            ('4', 'April'),
            ('5', 'Mei'),
            ('6', 'Juni'),
            ('7', 'Juli'),
            ('8', 'Agustus'),
            ('9', 'September'),
            ('10', 'Oktober'),
            ('11', 'November'),
            ('12', 'Desember'),
        ]
        return bulan_lookup

    def queryset(self, request, queryset):
        if self.value():
            return queryset.filter(tanggal_kirim__month=int(self.value()))
        return queryset


class PesanKontakAdmin(admin.ModelAdmin):
    list_display = ['nama', 'email', 'subjek', 'pesan', 'tanggal_kirim']
    list_filter = [BulanFilter]

    def has_add_permission(self, request):
        return False 
    
    def has_change_permission(self, request, obj=None):
        return False  # Hilangkan tombol "Save"
admin.site.register(PesanKontak, PesanKontakAdmin)
