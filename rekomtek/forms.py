from django import forms
from django.forms import inlineformset_factory
from django.core.exceptions import ValidationError
from rekomtek.models import (
    RekomendasiTeknis, Intake, PelaksanaanKontruksiDanPengalihanAir, Layanan
)


# --- Validator PDF ---
def validate_pdf(file):
    limit_mb = 5
    if not file.name.lower().endswith('.pdf'):
        raise ValidationError("Hanya file PDF yang diperbolehkan.")
    if file.size > limit_mb * 1024 * 1024:
        raise ValidationError(f"Ukuran file maksimal {limit_mb} MB.")


class RekomendasiTeknisForm(forms.ModelForm):
    class Meta:
        model = RekomendasiTeknis
        exclude = ['user', 'nomor_surat', 'tanggal_permohonan']
        widgets = {
            # dokumen
            'dok_gambar_desain': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_izin_lingkungan': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_berita_acara': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_jenis_prasarana': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_kepemilikan_lahan': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_perizinan_usaha': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_proposal_teknis': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_rencana_operasi': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_surat_permohonan': forms.ClearableFileInput(attrs={'class': 'form-control'}),

            # hidden untuk kontrol mode
            'jenis_permohonan': forms.HiddenInput(),
            'permohonan_lama': forms.HiddenInput(),
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        if not self.initial.get('jenis_permohonan'):
            self.initial['jenis_permohonan'] = 'baru'

        data_diri_fields = [
            'nama_pemohon', 'alamat_perusahaan', 'kontak_pemohon',
            'email_pemohon', 'nama_perusahaan', 'nama_direktur',
        ]
        for fname in data_diri_fields:
            if fname in self.fields:
                self.fields[fname].required = True
                self.fields[fname].error_messages['required'] = 'Field ini wajib diisi.'

        dokumen_fields = [
            'dok_gambar_desain','dok_izin_lingkungan','dok_berita_acara',
            'dok_jenis_prasarana','dok_kepemilikan_lahan','dok_perizinan_usaha',
            'dok_proposal_teknis','dok_rencana_operasi','dok_surat_permohonan',
        ]
        for fname in dokumen_fields:
            if fname in self.fields:
                self.fields[fname].required = True
                self.fields[fname].error_messages['required'] = 'File ini wajib diupload.'

        self.fields['permohonan_lama'].required = False
        self.fields['jenis_permohonan'].required = False
        
        if "tanggal_permohonan_sebelumnya" in self.fields:
            self.fields["tanggal_permohonan_sebelumnya"].widget.attrs["readonly"] = True

    def clean(self):
        cleaned = super().clean()
        jenis = cleaned.get('jenis_permohonan')
        perm_lama = cleaned.get('permohonan_lama')
        if jenis == 'perpanjangan' and not perm_lama:
            raise forms.ValidationError('Nomor permohonan lama belum dipilih/valid untuk perpanjangan.')
        return cleaned


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


IntakeFormSet = inlineformset_factory(
    RekomendasiTeknis,
    Intake,
    form=IntakeForm,
    extra=1,
    can_delete=False
)


class PelaksanaanKontruksiDanPengalihanAirForm(forms.ModelForm):
    class Meta:
        model = PelaksanaanKontruksiDanPengalihanAir
        exclude = ['user', 'nomor_surat', 'tanggal_permohonan']
        widgets = {
            # dokumen
            'dok_surat_permohonan': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_profil_perusahaan': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_akte_notaris': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_nib_oss': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_ktp_direktur': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_npwp_direktur': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_npwp_kaltim': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_peta_lokasi': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_desain_bangunan': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_spesifikasi_teknis': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_analisa_perhitungan': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_jadwal_pelaksanaan': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_manual_operasi': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_sertifikat_tanah': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_lingkungan': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_berita_acara': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_surat_kuasa': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'dok_pertimbangan': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            "tanggal_pertimbangan": forms.DateInput(
                attrs={
                    "class": "form-control",
                    "type": "date",   # ini penting biar muncul kalender
                }
            ),
        }
        labels = {

            # hidden
            'jenis_permohonan': forms.HiddenInput(),
            'permohonan_lama': forms.HiddenInput(),
        }
        labels = {
            # --- Identitas Pemohon ---
            "nama_pemohon": "Nama Pemohon",
            "kontak_pemohon": "Kontak Pemohon",
            "email_pemohon": "Email Pemohon",
            "layanan": "Jenis Layanan",
            "nama_perusahaan": "Nama Perusahaan",
            "nama_direktur": "Nama Direktur / Pimpinan",
            "alamat_perusahaan": "Alamat Perusahaan",

            # --- Lampiran Izin (Upload Dokumen) ---
            "dok_surat_permohonan": "Surat Permohonan Izin pelaksanaan konstruksi pada sumber air. "
                                    "Ditandatangani oleh direktur dan bermeterai*",
            "dok_profil_perusahaan": "Scan Profil Perusahaan (Company Profile) / Profil Pemohon*",
            "dok_akte_notaris": "Akte Notaris dari awal sampai dengan terakhir (dilegalisir)*",
            "dok_nib_oss": "Scan Nomor Induk Berusaha (NIB) dari OSS*",
            "dok_ktp_direktur": "Scan KTP Direktur dan/atau yang dikuasakan "
                                "dalam Pendelegasian Kewenangan / Pimpinan Instansi / Pelaku Usaha*",
            "dok_npwp_direktur": "Scan NPWP Direktur*",
            "dok_npwp_kaltim": "Bukti berkantor di Kalimantan Timur & memiliki NPWP Kalimantan Timur*",
            "dok_peta_lokasi": "Gambar Lokasi / Peta Lokasi (disertai titik koordinat)*",
            "dok_desain_bangunan": "Gambar desain bangunan konstruksi yang disetujui "
                                   "Dinas PUPR & PERA Provinsi Kaltim Bidang SDA*",
            "dok_spesifikasi_teknis": "Spesifikasi Teknis Bangunan Konstruksi dan Metode Pelaksanaannya*",
            "dok_analisa_perhitungan": "Gambar desain bangunan beserta Analisa Perhitungan*",
            "dok_jadwal_pelaksanaan": "Jadwal Pelaksanaan Pekerjaan*",
            "dok_manual_operasi": "Manual Operasi dan Pemeliharaan*",
            "dok_sertifikat_tanah": "Bukti Kepemilikan Tanah (Sertifikat Tanah)*",
            "dok_lingkungan": "Dokumen Lingkungan Hidup & persetujuannya (AMDAL/UKL-UPL/SPPL)*",
            "dok_berita_acara": "Berita Acara Pertemuan Konsultasi Masyarakat / Publik*",
            "dok_surat_kuasa": "Scan Surat Kuasa Bermeterai (apabila pengurusan izin diwakilkan)*",
            "dok_pertimbangan": "Upload Pertimbangan Dinas Teknis*",

            # --- Pertimbangan & Catatan ---
            "pertimbangan": "Pertimbangan",
            "saran_masukan": "Saran dan Masukan",
            "nomor_pertimbangan": "No. Pertimbangan",
            "tanggal_pertimbangan": "Tanggal Pertimbangan",
            "catatan": "Catatan Untuk Petugas Berikutnya",

            # --- Tambahan (Perpanjangan) ---
            "permohonan_lama": "Permohonan Sebelumnya",
            "jenis_permohonan": "Jenis Permohonan",
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        if not self.initial.get('jenis_permohonan'):
            self.initial['jenis_permohonan'] = 'baru'

        data_diri_fields = [
            'nama_pemohon', 'kontak_pemohon', 'email_pemohon',
        ]
        for fname in data_diri_fields:
            if fname in self.fields:
                self.fields[fname].required = True
                self.fields[fname].error_messages['required'] = 'Field ini wajib diisi.'

        dokumen_fields = [
            'dok_surat_permohonan','dok_profil_perusahaan','dok_akte_notaris',
            'dok_nib_oss','dok_ktp_direktur','dok_npwp_direktur','dok_npwp_kaltim',
            'dok_peta_lokasi','dok_desain_bangunan','dok_spesifikasi_teknis',
            'dok_analisa_perhitungan','dok_jadwal_pelaksanaan','dok_manual_operasi',
            'dok_sertifikat_tanah','dok_lingkungan','dok_berita_acara',
            'dok_surat_kuasa','dok_pertimbangan',
        ]
        for fname in dokumen_fields:
            if fname in self.fields:
                self.fields[fname].required = True
                self.fields[fname].error_messages['required'] = 'File ini wajib diupload.'

        self.fields['permohonan_lama'].required = False
        self.fields['jenis_permohonan'].required = False

        if "tanggal_permohonan_sebelumnya" in self.fields:
            self.fields["tanggal_permohonan_sebelumnya"].widget.attrs["readonly"] = True

    def clean(self):
        cleaned = super().clean()
        jenis = cleaned.get('jenis_permohonan')
        perm_lama = cleaned.get('permohonan_lama')

        if jenis == 'perpanjangan' and not perm_lama:
            raise forms.ValidationError(
                'Nomor permohonan lama belum dipilih/valid untuk perpanjangan.'
            )
        return cleaned
