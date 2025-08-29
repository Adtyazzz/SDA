from django import forms
from django.forms import inlineformset_factory
from rekomtek.models import RekomendasiTeknis, Intake

class RekomendasiTeknisForm(forms.ModelForm):
    class Meta:
        model = RekomendasiTeknis
        exclude = ['user','tanggal_permohonan', 'jadwal_kunjungan_lapangan', 'tanggal_kunjungan_lapangan_1', 'tanggal_kunjungan_lapangan_2']
        widgets = {
            'dok_gambar_desain': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_izin_lingkungan': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_berita_acara': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_jenis_prasarana': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_kepemilikan_lahan': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_perizinan_usaha': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_proposal_teknis': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_rencana_operasi': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_surat_permohonan': forms.ClearableFileInput(attrs={'class': 'form-control'}),
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        # ✅ Field wajib isi (Data Diri)
        data_diri_fields = [
            'nama_pemohon',
            'alamat_perusahaan',
            'kontak_pemohon',
            'email_pemohon',
            'nama_perusahaan',
            'nama_direktur',
        ]
        for field_name in data_diri_fields:
            if field_name in self.fields:
                self.fields[field_name].required = True
                self.fields[field_name].error_messages['required'] = 'Field ini wajib diisi.'

        # ✅ Field wajib isi (Dokumen Lainnya)
        dokumen_fields = [
            'dok_gambar_desain',
            'dok_izin_lingkungan',
            'dok_berita_acara',
            'dok_jenis_prasarana',
            'dok_kepemilikan_lahan',
            'dok_perizinan_usaha',
            'dok_proposal_teknis',
            'dok_rencana_operasi',
            'dok_surat_permohonan',
        ]
        for field_name in dokumen_fields:
            if field_name in self.fields:
                self.fields[field_name].required = True
                self.fields[field_name].error_messages['required'] = 'File ini wajib diupload.'


class IntakeForm(forms.ModelForm):
    class Meta:
        model = Intake
        exclude = ('rekomtek',)
        widgets = {
            'sumber_air': forms.Select(attrs={'class': 'form-select'}),
            'tujuan_pemanfaatan': forms.Textarea(attrs={'rows': 2}),
            'cara_pengambilan_air': forms.Textarea(attrs={'rows': 2}),
            'cara_pembuangan_air': forms.Textarea(attrs={'rows': 2}),
        }

# Inline formset Intake
IntakeFormSet = inlineformset_factory(
    RekomendasiTeknis,
    Intake,
    form=IntakeForm,
    extra=1,
    can_delete=False
)
