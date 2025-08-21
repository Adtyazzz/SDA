from dashboard.models import foto_profil


def profil_context(request):
    context = {}
    if request.user.is_authenticated:
        profil, created = foto_profil.objects.get_or_create(user=request.user)
        context['foto_profil'] = profil
    return context
