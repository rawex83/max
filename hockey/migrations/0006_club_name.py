# Generated by Django 2.2.1 on 2019-05-31 22:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hockey', '0005_club'),
    ]

    operations = [
        migrations.AddField(
            model_name='club',
            name='name',
            field=models.CharField(blank=True, max_length=50),
        ),
    ]
