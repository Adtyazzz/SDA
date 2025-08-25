from django.db import models

# Create your models here.
class Peraturan(models.Model):
    judul = models.CharField(max_length=255, blank=True, null=True)
    file = models.FileField(upload_to='file_peraturan/')
    tanggal_upload = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.judul
    
    class Meta:
        verbose_name_plural = '1. Peraturan'


class SOP(models.Model):
    judul = models.CharField(max_length=255, blank=True, null=True)
    file = models.FileField(upload_to='file_sop/')
    tanggal_upload = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.judul
    
    class Meta:
        verbose_name_plural = '2. SOP'