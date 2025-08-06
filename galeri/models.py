from django.db import models

# Create your models here.

class KategoriKegiatanFisik(models.Model):
    nama_kategori = models.CharField(max_length=100)

    def __str__(self):
        return self.nama_kategori
    
    class Meta:
        verbose_name_plural = '1. Kategori Kegiatan Fisik'

class Foto(models.Model):
    kategori = models.ForeignKey(KategoriKegiatanFisik, on_delete=models.SET_NULL, blank=True, null=True)
    nama_kegiatan = models.CharField(max_length=255, blank=True, null=True)
    uraian_singkat = models.CharField(max_length=255, blank=True, null=True)
    Foto_dokumentasi = models.ImageField(upload_to='foto', blank=True, null=True)
    tanggal_kegiatan = models.DateField()
    tanggal_upload = models.DateField(auto_now_add=True)
    views = models.PositiveIntegerField(default=0)

    def __str__(self):
        return self.nama_kegiatan
    
    class Meta:
        verbose_name_plural = '3. Foto Kegiatan Fisik'

class KategoriKegiatanPerencanaan(models.Model):
    nama_kategori = models.CharField(max_length=100)

    def __str__(self):
        return self.nama_kategori
    
    class Meta:
        verbose_name_plural = '2. Kategori Kegiatan Perencanaan'
    
        
class FotoKegiatanPerencanaan(models.Model):
    kategori = models.ForeignKey(KategoriKegiatanPerencanaan, on_delete=models.SET_NULL, blank=True, null=True)
    nama_kegiatan = models.CharField(max_length=255, blank=True, null=True)
    uraian_singkat = models.CharField(max_length=255, blank=True, null=True)
    Foto_dokumentasi = models.ImageField(upload_to='foto', blank=True, null=True)
    tanggal_kegiatan = models.DateField()
    tanggal_upload = models.DateField(auto_now_add=True)
    views = models.PositiveIntegerField(default=0)

    def __str__(self):
        return self.nama_kegiatan
    
    class Meta:
        verbose_name_plural = '4. Foto Kegiatan Perencanaan'

class Video(models.Model):
    judul_video = models.CharField(max_length=255, blank=True, null=True)
    uraian_singkat = models.CharField(max_length=255, blank=True, null=True)
    file_video = models.FileField(upload_to='video/')
    tanggal_kegiatan = models.DateField()
    tanggal_upload = models.DateField(auto_now_add=True)
    views = models.PositiveIntegerField(default=0)

    def __str__(self):
        return self.judul_video
    
    class Meta:
        verbose_name_plural = '5. Video'