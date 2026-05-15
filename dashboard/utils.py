import datetime

def generate_nomor_surat(model_class, kode_layanan):
    """
    Generate nomor surat unik berdasarkan model & kode layanan
    model_class   = Model Django (contoh: RekomendasiTeknis)
    kode_layanan = string kode layanan (contoh: "PSDA", "PGSDA", "PK")
    """
    year = datetime.date.today().year
    prefix = f"SDA-{kode_layanan}-{year}"

    last_count = model_class.objects.filter(
        nomor_surat__startswith=prefix
    ).count() + 1

    return f"{prefix}-{last_count:03d}"
