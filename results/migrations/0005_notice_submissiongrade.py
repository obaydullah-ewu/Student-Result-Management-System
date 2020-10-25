# Generated by Django 2.2.7 on 2019-12-12 20:07

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('results', '0004_course_studentcourse_teachercourse'),
    ]

    operations = [
        migrations.CreateModel(
            name='SubmissionGrade',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('mid1', models.FloatField(null=True)),
                ('mid2', models.FloatField(null=True)),
                ('lab', models.FloatField(null=True)),
                ('quiz', models.FloatField(null=True)),
                ('final', models.FloatField(null=True)),
                ('course', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='results.Course')),
                ('student', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='results.Student')),
                ('teacher', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='results.Teacher')),
            ],
        ),
        migrations.CreateModel(
            name='Notice',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200)),
                ('description', models.TextField(blank=True, null=True)),
                ('hire_date', models.DateTimeField(blank=True, default=datetime.datetime.now)),
                ('teacher', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='results.Teacher')),
            ],
        ),
    ]
