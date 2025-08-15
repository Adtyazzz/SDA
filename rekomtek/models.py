from django.db import models

class Layanan(models.Model):
    nama_layanan = models.CharField(max_length=255)

    def __str__(self):
        return self.nama_layanan
    
    class Meta:
        verbose_name_plural = '1. Layanan'


class RekomendasiTeknis(models.Model):
    nama_pemohon = models.CharField(max_length=255, null=True, blank=True)
    kontak_pemohon = models.CharField(max_length=100, null=True, blank=True)
    email_pemohon = models.EmailField(null=True, blank=True)
    layanan = models.ForeignKey(Layanan, on_delete=models.CASCADE, null=True, blank=True)
    nama_perusahaan = models.CharField(max_length=255, null=True, blank=True)
    nama_direktur = models.CharField(max_length=255, blank=True, null=True)
    alamat_perusahaan = models.TextField(max_length=255, blank=True, null=True)
    tanggal_permohonan = models.DateField(auto_now_add=True)

    dok_gambar_desain = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_izin_lingkungan = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_berita_acara = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_jenis_prasarana = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_kepemilikan_lahan = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_perizinan_usaha = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_proposal_teknis = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_rencana_operasi = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)
    dok_surat_permohonan = models.FileField(upload_to='uploads/dokumen/', blank=True, null=True)

    
    def __str__(self):
        return self.nama_pemohon if self.nama_pemohon else "Tanpa Nama"
    
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
        verbose_name_plural = '4. Data Intake'



class StatusRekomendasiTeknis(models.Model):
    rekomtek = models.ForeignKey(RekomendasiTeknis, on_delete=models.CASCADE, related_name='status_rekomtek', null=True, blank=True)
    jadwal_kunjungan_lapangan = models.DateField(blank=True, null=True)
    tanggal_kunjungan_lapangan_1 = models.DateField(blank=True, null=True)
    tanggal_kunjungan_lapangan_2 = models.DateField(blank=True, null=True)

    def __str__(self):
        return (self.rekomtek.nama_pemohon if self.rekomtek and self.rekomtek.nama_pemohon else "Tanpa Rekomtek")

    
    class Meta:
        verbose_name_plural = '3. Status Rekomendasi Teknis'
