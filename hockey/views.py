
from django.shortcuts import render
from hockey.models import *

def index(request):
    mains = Main.objects.all()
    images = Image.objects.all()
    clubs = Club.objects.all()
    teams = Team.objects.all()
    models = Models.objects.all()
    data = {"mains": mains, "images": images,  "clubs": clubs, "teams": teams, "models": models}
    return render(request, "modules/index.html", context=data)