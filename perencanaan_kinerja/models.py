from django.db import models

class Renstra(models.Model):
    judul = models.CharField(max_length=200)
    file = models.FileField(upload_to="renstra_sda/")
    uploaded_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.judul
    
    class Meta:
        verbose_name_plural = 'Renstra SDA'

class Laporankinerja(models.Model):
    judul = models.CharField(max_length=200)
    file = models.FileField(upload_to="laporan_kinerja_dpuprpera_2024")
    uploaded_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.judul
    
    class Meta:
        verbose_name_plural = 'Laporan Kinerja DPUPR & PERA 2024'
# Create your models here.