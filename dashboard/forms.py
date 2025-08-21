from django import forms
from django.contrib.auth.models import User
from .models import foto_profil

class UserUpdateForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ['username', 'email', 'first_name', 'last_name']

class FotoProfilForm(forms.ModelForm):
    class Meta:
        model = foto_profil
        fields = ['avatar']
