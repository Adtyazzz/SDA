from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Artikel(models.Model):
    judul = models.CharField(max_length=255)
    isi = models.TextField(blank=True, null=True)
    author = models.ForeignKey(User, on_delete=models.PROTECT)
    thumbnail = models.ImageField(upload_to='artikel',blank=True, null=True)

    def __str__(self):
        return self.judul


    class Meta:
        verbose_name_plural = "Artikel"

