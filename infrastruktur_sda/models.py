from django.urls import reverse
from django.db import models
import datetime
from django.utils.text import slugify
from ckeditor_uploader.fields import RichTextUploadingField
from ckeditor.fields import RichTextField

x = datetime.datetime.now()
class KategoriInfrastrukturSda(models.Model):
    # id_kategori = models.IntegerField(primary_key=True)
    nama_kategori = models.CharField(max_length=255)
    tgl_buat = models.DateField(auto_now_add=True)
    tgl_update = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.nama_kategori

    class Meta:
        managed = True
        db_table = 'kategori_infrastruktur_sda'
        verbose_name_plural = "1. Kategori"


class InfrastrukturSda(models.Model):
    # id_infrastruktur = models.AutoField(primary_key=True)  # tambahkan baris ini
    nama = models.CharField(max_length=255)
    gambar = models.ImageField(upload_to='Pembangunan_sda', blank=True, null=True)
    uraian = RichTextUploadingField(
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
    data_teknis = RichTextUploadingField(
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
    slug = models.SlugField(max_length=225, unique=True, blank=True, null=True)
    kategori = models.ForeignKey(KategoriInfrastrukturSda, on_delete=models.SET_NULL, blank=True, null=True)
    tgl_buat = models.DateField(auto_now_add=True)
    tgl_update = models.DateField(auto_now_add=True)
    views = models.PositiveIntegerField(default=0)

    def __str__(self):
        return self.nama
    
    def get_absolute_url(self):
        return reverse('infrastruktur_detail', kwargs={'slug': self.slug})
    
    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(f"{x.year}-{x.month}-{x.day}-{self.nama}")
        super(InfrastrukturSda, self).save(*args, **kwargs)

    class Meta:
        managed = True
        db_table = 'infrastruktur_sda'
        verbose_name_plural = "2. Infrastruktur Sda"


class PekerjaanSda(models.Model):
    infrastruktur = models.ForeignKey(InfrastrukturSda, related_name='pekerjaan_set', on_delete=models.CASCADE)
    nama_pekerjaan = models.CharField(max_length=150)
    tahun = models.CharField(max_length=150)  # This field type is a guess.
    pagu_anggaran = models.CharField(max_length=255,blank=True, null=True)
    sumber_dana = models.CharField(max_length=150, blank=True ,null=True,)
    kontraktor = models.CharField(max_length=150, blank=True, null=True)
    konsultan = models.CharField(max_length=150, blank=True, null=True)
    tgl_buat = models.DateField(auto_now_add=True)
    tgl_update = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.nama_pekerjaan

    class Meta:
        managed = True
        db_table = 'pekerjaan_sda'
        verbose_name_plural = "3. Pekerjaan Sda"

class Post(models.Model):
    title = models.CharField(max_length=200)
    content = RichTextField()

    def __str__(self):
        return self.title