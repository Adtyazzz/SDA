from django.db import models

# Create your models here.

class Ikm(models.Model):
    judul = models.CharField(max_length=255, blank=True, null=True)
    file = models.FileField(upload_to='Indeks_Kepuasan_masyarakat/', blank=True, null=True)
    tanggal_upload = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.judul
    
    class Meta:
        verbose_name_plural = '1. Indeks Kepuasan Masyarakat'

class Hidrologi(models.Model):
    judul = models.CharField(max_length=255, blank=True, null=True)
    file = models.FileField(upload_to='Hidrologi/', blank=True, null=True)
    tanggal_upload = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.judul

    class Meta:
        verbose_name_plural = '2. Hidrologi'