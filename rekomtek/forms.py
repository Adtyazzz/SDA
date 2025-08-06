from django import forms
from rekomtek.models import RekomendasiTeknis


class RekomendasiTeknisForm(forms.ModelForm):
    class Meta:
        model = RekomendasiTeknis
        # Hanya tampilkan field yang kamu inginkan
        exclude = [
            'tanggal_permohonan',
            'jadwal_kunjungan_lapangan',
            'tanggal_kunjungan_lapangan_1',
            'tanggal_kunjungan_lapangan_2'
        ]
