from django.contrib import admin
from informasi_sda.models import Polawilayahsungai
from informasi_sda.models import RencanaPSDA

# Register your models here.
class PolawilayahsungaiAdmin(admin.ModelAdmin):
    list_display = ['judul','file', 'uploaded_at'] 
admin.site.register(Polawilayahsungai, PolawilayahsungaiAdmin)

class RencanaPSDAAdmin(admin.ModelAdmin):
    list_display = ['judul','file', 'uploaded_at'] 
admin.site.register(RencanaPSDA, RencanaPSDAAdmin)