from django.db import models


class Main(models.Model):
    name = models.CharField(max_length=50, blank=True)
    text = models.CharField(max_length=500, blank=True)

    class Meta:
        verbose_name = 'Заголовок'
        verbose_name_plural = 'Заголовки'

class Image(models.Model):
    img = models.CharField(max_length=150, blank=True)
    naz = models.CharField(max_length=100, blank=True)
    modal = models.CharField(max_length=15, blank=True)

    class Meta:
        verbose_name = 'Картинка'
        verbose_name_plural = 'Картинки'

class Club(models.Model):
    name = models.CharField(max_length=50, blank=True)
    naz = models.CharField(max_length=1500, blank=True)

    class Meta:
        verbose_name = 'Клуб'
        verbose_name_plural = 'Клубы'

class Team(models.Model):
    img = models.CharField(max_length=50, blank=True)
    name = models.CharField(max_length=150, blank=True)
    position = models.CharField(max_length=50, blank=True)
    age = models.CharField(max_length=2, blank=True)
    rost = models.CharField(max_length=3, blank=True)
    ves = models.CharField(max_length=3, blank=True)
    hvat = models.CharField(max_length=10, blank=True)
    contract = models.CharField(max_length=50, blank=True)
    model = models.CharField(max_length=50, blank=True)

    class Meta:
        verbose_name = 'Команда'
        verbose_name_plural = 'Команды'

class Models(models.Model):
    modal = models.CharField(max_length=50, blank=True)
    img = models.CharField(max_length=50, blank=True)
    text = models.CharField(max_length=1000, blank=True)

    class Meta:
        verbose_name = 'Модель'
        verbose_name_plural = 'Модели'