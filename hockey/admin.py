from django.contrib import admin
from hockey.models import *


class MainAdmin(admin.ModelAdmin):
    list_display = ('name', 'text')

class ImageAdmin(admin.ModelAdmin):
    list_display = ('img', 'naz', 'modal')

class ClubAdmin(admin.ModelAdmin):
    list_display = ('naz', 'name')

class TeamAdmin(admin.ModelAdmin):
    list_display = ('img', 'name', 'position', 'age', 'rost', 'ves', 'hvat', 'model')

class ModelAdmin(admin.ModelAdmin):
    list_display = ('modal', 'img', 'text')


admin.site.register(Main, MainAdmin)
admin.site.register(Image, ImageAdmin)
admin.site.register(Club, ClubAdmin)
admin.site.register(Team, TeamAdmin)
admin.site.register(Models, ModelAdmin)
