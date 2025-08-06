from django.db import models

# Create your models here.
class PesanKontak(models.Model):
    nama = models.CharField(max_length=100)
    email = models.EmailField()
    subjek = models.CharField(max_length=150)
    pesan = models.TextField()
    tanggal_kirim = models.DateField(auto_now_add=True)

    def __str__(self):
        return f"{self.nama} - {self.subjek}"