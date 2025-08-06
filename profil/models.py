from django.db import models
from ckeditor.fields import RichTextField
from ckeditor_uploader.fields import RichTextUploadingField

class VisiMisi(models.Model):
    visi = RichTextUploadingField(
        config_name='special',
        external_plugin_resources=[(
            'youtube',
            # 'https://minio.umkt.ac.id/simpelv2-static/ckeditor_plugins/youtube/youtube/', ini punya saya
            'http://localhost:8000/static/ckeditor_plugins/youtube/youtube/',
            'plugin.js',
            )],
            blank=True,
            null=True
    )
    misi = RichTextUploadingField(
        config_name='special',
        external_plugin_resources=[(
            'youtube',
            # 'https://minio.umkt.ac.id/simpelv2-static/ckeditor_plugins/youtube/youtube/', ini punya saya
            'http://localhost:8000/static/ckeditor_plugins/youtube/youtube/',
            'plugin.js',
            )],
            blank=True,
            null=True
    )
    tgl_dibuat = models.DateTimeField(auto_now_add=True)
    tgl_diperbarui = models.DateTimeField(auto_now=True)

    def __str__(self):
        return "Visi dan Misi"
    
    class Meta:
        verbose_name_plural = '1. Visi dan Misi'

class TugasFungsi(models.Model):
    tugas = RichTextUploadingField(
        config_name='special',
        external_plugin_resources=[(
            'youtube',
            # 'https://minio.umkt.ac.id/simpelv2-static/ckeditor_plugins/youtube/youtube/', ini punya saya
            'http://localhost:8000/static/ckeditor_plugins/youtube/youtube/',
            'plugin.js',
            )],
            blank=True,
            null=True
    )
    fungsi = RichTextUploadingField(
        config_name='special',
        external_plugin_resources=[(
            'youtube',
            # 'https://minio.umkt.ac.id/simpelv2-static/ckeditor_plugins/youtube/youtube/', ini punya saya
            'http://localhost:8000/static/ckeditor_plugins/youtube/youtube/',
            'plugin.js',
            )],
            blank=True,
            null=True
    )
    tgl_dibuat = models.DateTimeField(auto_now_add=True)
    tgl_diperbarui = models.DateTimeField(auto_now=True)

    def __str__(self):
        return "Tugas dan Fungsi"
    
    class Meta:
        verbose_name_plural = '2. Tugas Fungsi'

class StrukturOrganisasi(models.Model):
    nama = models.CharField(max_length=255)
    jabatan = models.CharField(max_length=255)
    foto = models.ImageField(upload_to='struktur/')
    urutan = models.PositiveIntegerField(default=0)
    tgl_dibuat = models.DateTimeField(auto_now_add=True)
    tgl_diperbarui = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ['urutan']
        verbose_name_plural = '3. Struktur Organisasi'

    def __str__(self):
        return self.nama

class Sejarah(models.Model):
    isi = models.TextField()
    tgl_dibuat = models.DateTimeField(auto_now_add=True)
    tgl_diperbarui = models.DateTimeField(auto_now=True)

    def __str__(self):
        return "Sejarah"
    
    class Meta:
        verbose_name_plural = '4. Sejarah'

class LokasiKantor(models.Model):
    nama_kantor = models.CharField(max_length=255)
    alamat = models.TextField()
    telepon = models.CharField(max_length=20, blank=True, null=True)
    email = models.EmailField(blank=True, null=True)
    koordinat_lat = models.DecimalField(max_digits=9, decimal_places=6, blank=True, null=True)
    koordinat_long = models.DecimalField(max_digits=9, decimal_places=6, blank=True, null=True)
    tgl_dibuat = models.DateTimeField(auto_now_add=True)
    tgl_diperbarui = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.nama_kantor
    
    class Meta:
        verbose_name_plural = '5. Lokasi Kantor'
