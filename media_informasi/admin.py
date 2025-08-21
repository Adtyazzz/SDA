from django.contrib import admin

# Register your models here.
from django.contrib import admin
from media_informasi.models import MajalahBanyu

@admin.register(MajalahBanyu)
class MajalahBanyuAdmin(admin.ModelAdmin):
    list_display = ("judul", "tanggal_upload")
    search_fields = ("judul",)
