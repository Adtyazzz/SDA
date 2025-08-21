from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class foto_profil(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    avatar = models.ImageField(upload_to='avatars/', default='avatars/default.png', blank=True, null=True)


    def __str__(self):
        return self.user.username