from django.db import models
from django.contrib.auth.models import User
from django.core.exceptions import ValidationError

class Layanan(models.Model):
    nama_layanan = models.CharField(max_length=255)

    def __str__(self):
        return self.nama_layanan
    
    class Meta:
        verbose_name_plural = '1. Layanan'


class RekomendasiTeknis(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
    nomor_surat = models.CharField(max_length=50, unique=True, blank=True, null=True)  
    nama_pemohon = models.CharField(max_length=255, null=True, blank=True)
    kontak_pemohon = models.CharField(max_length=100, null=True, blank=True)
    email_pemohon = models.EmailField(null=True, blank=True)
    layanan = models.ForeignKey(Layanan, on_delete=models.CASCADE, null=True, blank=True)
    nama_perusahaan = models.CharField(max_length=255, null=True, blank=True)
    nama_direktur = models.CharField(max_length=255, blank=True, null=True)
    alamat_perusahaan = models.TextField(max_length=255, blank=True, null=True)
    tanggal_permohonan = models.DateField(auto_now_add=True)
    tanggal_permohonan_sebelumnya = models.DateField(null=True, blank=True)
    instansi_pemberi_permohonan_sebelumnya = models.CharField(max_length=255, null=True, blank=True)

    # dokumen
    dok_gambar_desain = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_izin_lingkungan = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_berita_acara = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_jenis_prasarana = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_kepemilikan_lahan = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_perizinan_usaha = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_proposal_teknis = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_rencana_operasi = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_surat_permohonan = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)

    # Tambahan untuk perpanjangan
    permohonan_lama = models.ForeignKey(
        "self", on_delete=models.SET_NULL, null=True, blank=True, related_name="perpanjangan"
    )
    jenis_permohonan = models.CharField(
        max_length=20,
        choices=[("baru", "Permohonan Baru"), ("perpanjangan", "Perpanjangan")],
        default="baru"
    )

    def __str__(self):
        if self.nomor_surat:
            return f"{self.nomor_surat} - {self.nama_pemohon or 'Tanpa Nama'}"
        return self.nama_pemohon or "Tanpa Nama"

    class Meta:
        verbose_name_plural = '2. Rekomendasi Teknis'


class Intake(models.Model):
    SUMBER_AIR_CHOICES = [
        ('sungai', 'Sungai'),
        ('danau', 'Danau'),
        ('waduk_/_kolam_tampungan', 'Waduk / Kolam Tampungan'),
        ('mata_air', 'Mata Air'),
    ]
    
    rekomtek = models.ForeignKey(RekomendasiTeknis, on_delete=models.CASCADE, related_name='intakes')
    sumber_air = models.CharField(max_length=50, choices=SUMBER_AIR_CHOICES, blank=True, null=True)
    kelurahan_desa = models.CharField(max_length=100, blank=True, null=True)
    kecamatan = models.CharField(max_length=100, blank=True, null=True)
    kabupaten_kota = models.CharField(max_length=100, blank=True, null=True)
    provinsi = models.CharField(max_length=100, blank=True, null=True)
    titik_koordinat = models.CharField(max_length=100, blank=True, null=True)
    tujuan_pemanfaatan = models.TextField(blank=True, null=True)
    cara_pengambilan_air = models.TextField(blank=True, null=True)
    cara_pembuangan_air = models.TextField(blank=True, null=True)
    volume_pengambilan = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    lama_waktu_pengambilan = models.CharField(max_length=50, blank=True, null=True)
    jenis_pompa = models.CharField(max_length=100, blank=True, null=True)
    kapasitas_pompa = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    upload_name_plate_pompa = models.FileField(upload_to='uploads/', blank=True, null=True)

    def __str__(self):
        return f"{self.sumber_air or 'Intake'} - {self.kelurahan_desa or ''}"
    
    class Meta:
        verbose_name_plural = '3. Data Intake'

# --- VALIDATOR ---
def validate_pdf(value):
    filesize = value.size
    limit_mb = 5
    if not value.name.lower().endswith('.pdf'):
        raise ValidationError("Hanya file PDF yang diperbolehkan.")
    if filesize > limit_mb * 1024 * 1024:
        raise ValidationError(f"Ukuran file maksimal {limit_mb} MB.")


class PelaksanaanKontruksiDanPengalihanAir(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
    nomor_surat = models.CharField(max_length=50, unique=True, blank=True, null=True)  
    nama_pemohon = models.CharField(max_length=255, null=True, blank=True)
    kontak_pemohon = models.CharField(max_length=100, null=True, blank=True)
    email_pemohon = models.EmailField(null=True, blank=True)
    layanan = models.ForeignKey("Layanan", on_delete=models.CASCADE, null=True, blank=True)

    # Identitas Perusahaan
    nama_perusahaan = models.CharField(max_length=255, null=True, blank=True)
    nama_direktur = models.CharField(max_length=255, blank=True, null=True)
    alamat_perusahaan = models.TextField(max_length=255, blank=True, null=True)

    # Tanggal permohonan
    tanggal_permohonan = models.DateField(auto_now_add=True)
    tanggal_permohonan_sebelumnya = models.DateField(null=True, blank=True)
    instansi_pemberi_permohonan_sebelumnya = models.CharField(max_length=255, null=True, blank=True)

    # Dokumen Upload
    dok_surat_permohonan = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_profil_perusahaan = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_akte_notaris = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_nib_oss = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_ktp_direktur = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_npwp_direktur = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_npwp_kaltim = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_peta_lokasi = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_desain_bangunan = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_spesifikasi_teknis = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_analisa_perhitungan = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_jadwal_pelaksanaan = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_manual_operasi = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_sertifikat_tanah = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_lingkungan = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_berita_acara = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_surat_kuasa = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_pertimbangan = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)

    # Pertimbangan & Catatan
    pertimbangan = models.TextField(blank=True, null=True)
    saran_masukan = models.TextField(blank=True, null=True)
    nomor_pertimbangan = models.CharField(max_length=50, blank=True, null=True)
    tanggal_pertimbangan = models.DateField(null=True, blank=True)
    catatan = models.TextField(blank=True, null=True)

    # Tambahan untuk perpanjangan
    permohonan_lama = models.ForeignKey(
        "self", on_delete=models.SET_NULL, null=True, blank=True, related_name="perpanjangan"
    )
    jenis_permohonan = models.CharField(
        max_length=20,
        choices=[("baru", "Permohonan Baru"), ("perpanjangan", "Perpanjangan")],
        default="baru"
    )

    def __str__(self):
        if self.nomor_surat:
            return f"{self.nomor_surat} - {self.nama_pemohon or 'Tanpa Nama'}"
        return self.nama_pemohon or "Tanpa Nama"

    class Meta:
        verbose_name_plural = "4. Pelaksanaan Konstruksi dan Pengalihan Air"





class StatusRekomendasiTeknis(models.Model):
    STATUS_CHOICES = [
        ('proses', 'Sedang Diproses'),
        ('diterima', 'Diterima'),
        ('ditolak', 'Ditolak'),
    ]
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
    rekomtek = models.ForeignKey(RekomendasiTeknis, on_delete=models.CASCADE, related_name='status_rekomtek', null=True, blank=True)
    pelaksanaan = models.ForeignKey(PelaksanaanKontruksiDanPengalihanAir, on_delete=models.CASCADE, related_name='status_pelaksanaan', null=True, blank=True)
    status = models.CharField(
        max_length=20, 
        choices=STATUS_CHOICES, 
        default='proses'
    )

    keterangan = models.TextField(blank=True, null=True)  # isi kalau ditolak
    tanggal_realisasi_kunjungan_lapangan = models.DateField(blank=True, null=True)
    jadwal_monitoring = models.FileField(blank=True, null=True)
    tanggal_kirim = models.DateField(auto_now=True)

    def __str__(self):
        if self.rekomtek:
            return f"{self.rekomtek.nama_pemohon} - {self.status}"
        return "Tanpa Rekomtek"

    class Meta:
        verbose_name_plural = '5. Status Rekomendasi Teknis'
