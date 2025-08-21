from django.db import models

# Create your models here.

from django.db import models

class MajalahBanyu(models.Model):
    judul = models.CharField(max_length=200)  # contoh: "Majalah Banyu Edisi 8"
    file_majalah = models.FileField(upload_to='majalah_banyu/')  # file PDF disimpan di folder media/majalah_banyu
    tanggal_upload = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.judul

    class Meta:
        verbose_name_plural = "Majalah Banyu"
