from django import forms
from contact.models import PesanKontak

class KontakForm(forms.ModelForm):
    class Meta:
        model = PesanKontak
        fields = ['nama', 'email', 'subjek', 'pesan']
        widgets = {
            'nama': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Full Name'}),
            'email': forms.EmailInput(attrs={'class': 'form-control', 'placeholder': 'Email Address'}),
            'subjek': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Subject'}),
            'pesan': forms.Textarea(attrs={'class': 'form-control', 'placeholder': 'Your Message'}),
        }
