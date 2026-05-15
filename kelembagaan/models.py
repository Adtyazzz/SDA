from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField

# Create your models here.
class TKPSDA(models.Model):
    isi = RichTextUploadingField(
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
    keanggotaan = RichTextUploadingField(
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

    def __str__(self):
        return self.isi
    
    class Meta:
         verbose_name_plural = '1. TKPSDA'
   