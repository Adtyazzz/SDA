from django import forms
from .models import PekerjaanSda

class PekerjaanSdaForm(forms.ModelForm):
    class Meta:
        model = PekerjaanSda
        exclude = ['infrastruktur']  # Field ini akan diisi manual di views, bukan lewat form

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'
