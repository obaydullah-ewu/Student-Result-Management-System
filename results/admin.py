from django.contrib import admin
from .models import *

@admin.register(SubmissionGrade)
class SubmissionGradeAdmin(admin.ModelAdmin):
    list_display = (
	    "student",
	    "course",
        "mid1",
        "mid2",
        "lab",
	    "quiz",
	    "final",
        "total",
    )
    list_filter = ('student',)


# Register your models here.
admin.site.register(Student)
admin.site.register(Teacher)
admin.site.register(Course)
admin.site.register(TeacherCourse)
admin.site.register(StudentCourse)
admin.site.register(Notice)
