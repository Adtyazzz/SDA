from django.contrib import admin
from perencanaan_kinerja.models import Renstra
from perencanaan_kinerja.models import Laporankinerja

class RenstraAdmin(admin.ModelAdmin):
    list_display = ['judul','file', 'uploaded_at'] 
admin.site.register(Renstra, RenstraAdmin)
class LaporankinerjaAdmin(admin.ModelAdmin):
    list_display = ['judul','file', 'uploaded_at'] 
admin.site.register(Laporankinerja, LaporankinerjaAdmin)
# Register your models here.