from django.db import models

# Create your models here.

class Layanan(models.Model):
    nama_layanan = models.CharField(max_length=255)

    def __str__(self):
        return self.nama_layanan

class RekomendasiTeknis(models.Model):
    layanan = models.ForeignKey(Layanan, on_delete=models.CASCADE)
    nama_usulan = models.CharField(max_length=255)
    tujuan = models.CharField(max_length=255)
    deskripsi = models.TextField()
    lokasi = models.CharField(max_length=255)
    jumlah_usulan = models.CharField(max_length=255)
    nama_pemohon = models.CharField(max_length=255)
    kontak_pemohon = models.CharField(max_length=100)
    email_pemohon = models.EmailField()
    foto_lokasi = models.ImageField(upload_to='foto_lokasi/', blank=True, null=True)
    koordinat_longitude = models.DecimalField(max_digits=9, decimal_places=6)
    koordinat_latitude = models.DecimalField(max_digits=9, decimal_places=6)
    tanggal_permohonan = models.DateField(auto_now_add=True)
    
    # Ganti istilah "kunjungan_lapan" menjadi "kunjungan_lapangan"
    

    def __str__(self):
        return self.nama_pemohon
    
class StatusRekomendasiTeknis(models.Model):
    rekomtek = models.ForeignKey(RekomendasiTeknis, on_delete=models.CASCADE, related_name='status_rekomtek')
    jadwal_kunjungan_lapangan = models.DateField(blank=True, null=True)
    tanggal_kunjungan_lapangan_1 = models.DateField(blank=True, null=True)
    tanggal_kunjungan_lapangan_2 = models.DateField(blank=True, null=True)

    def __str__(self):
        return self.rekomtek.nama_pemohon  # Menampilkan nama_pemohon dari relasi

    
