from django.db import models

class Polawilayahsungai(models.Model):
    judul = models.CharField(max_length=200)
    file = models.FileField(upload_to="pola_wilayah_sungai/")
    uploaded_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.judul
    
    class Meta:
        verbose_name_plural = 'Pola Wilayah Sungai'

class RencanaPSDA(models.Model):
    judul = models.CharField(max_length=200)
    file = models.FileField(upload_to="rencana_psda/")
    uploaded_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.judul
    
    class Meta:
        verbose_name_plural = 'Rencana PSDA Wilayah Sungai'

# Create your models here.