# Generated by Django 2.2.7 on 2019-12-12 19:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('results', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='student',
            name='is_mvp',
        ),
        migrations.AddField(
            model_name='student',
            name='role',
            field=models.CharField(default='student', max_length=10),
        ),
    ]
