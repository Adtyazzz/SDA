from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.contrib import messages
from django.utils.safestring import mark_safe
import urllib.parse

# LOGIN
def akun_login(request):
    if request.user.is_authenticated:
        # kalau user sudah login langsung redirect sesuai role
        if request.user.is_staff or request.user.is_superuser:
            return redirect('/admin/')
        else:
            return redirect('/dashboard/')

    template_name = "halaman/login.html"
    pesan = ''

    if request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")

        user = authenticate(request, username=username, password=password)
        if user:
            login(request, user)

            # cek role
            if user.is_staff or user.is_superuser:
                return redirect('/admin/')
            else:
                return redirect('/dashboard/')
        else:
            pesan = "Username atau password salah"

    # ambil username & email dari session (kalau ada)
    username = request.session.get("reg_username", "")
    email = request.session.get("reg_email", "")

    # buat link WhatsApp
    wa_number = "628115580305"
    wa_message = (
        f"Halo Admin, saya ingin mengaktifkan akun saya.\n"
        f"Username: {username}\n"
        f"Email: {email}\n"
        f"Terima kasih."
    )
    wa_url = f"https://wa.me/{wa_number}?text={urllib.parse.quote_plus(wa_message)}"

    context = {
        'pesan': pesan,
        'wa_url': wa_url
    }
    return render(request, template_name, context)

# REGISTRASI
def akun_registrasi(request):
    if request.user.is_authenticated:
        return redirect('/')

    pesan = ''
    template_name = 'halaman/registrasi.html'
    if request.method == "POST":
        username = request.POST.get("username")
        nama_depan = request.POST.get("nama_depan")
        nama_belakang = request.POST.get("nama_belakang")
        email = request.POST.get("email")
        password1 = request.POST.get("password1")
        password2 = request.POST.get("password2")

        if password1 == password2:
            check_user = User.objects.filter(username=username)
            if check_user.count() == 0:
                user_simpan = User.objects.create(
                    username=username,
                    first_name=nama_depan,
                    last_name=nama_belakang,
                    email=email,
                    is_active=False  # akun default nonaktif
                )
                user_simpan.set_password(password1)
                user_simpan.save()

                # Buat template pesan WA
                wa_number = "628115580305"  # ganti dengan nomor admin
                wa_message = (
                    f"Halo Admin, saya ingin mengaktifkan akun saya.\n"
                    f"Username: {username}\n"
                    f"Email: {email}\n"
                    f"Terima kasih."
                )
                wa_url = f"https://wa.me/{wa_number}?text={urllib.parse.quote_plus(wa_message)}"

                # Pesan sukses dengan link WA
                pesan_wa = mark_safe(
                    f'Registrasi berhasil! Hubungi admin melalui '
                    f'<a href="{wa_url}" target="_blank" class="text-success font-weight-bold">WhatsApp ini</a> '
                    f'untuk mengaktivasi akun anda agar bisa digunakan.'
                )
                messages.success(request, pesan_wa)
                return redirect('akun_login')
            else:
                pesan = "Username sudah digunakan"
        else:
            pesan = "Password tidak sama"

    context = {
        'pesan': pesan
    }
    return render(request, template_name, context)


# LOGOUT
def akun_logout(request):
    logout(request)
    return redirect('akun_login')
