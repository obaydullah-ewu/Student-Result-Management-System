from django.db import models
from django.contrib.auth.hashers import make_password
from django.contrib.auth.models import User
from datetime import datetime
# Create your models here.

class Student(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    uuid = models.CharField(max_length=50)
    phone = models.CharField(max_length=15)

    admission_date = models.DateTimeField(default=datetime.now, blank=True)
    role = models.CharField(max_length=10, default='student')

    def __str__(self):
        return self.user.username

class Teacher(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    uuid = models.CharField(max_length=50)
    phone = models.CharField(max_length=15)

    joining_date = models.DateTimeField(default=datetime.now, blank=True)
    role = models.CharField(max_length=10, default='teacher')

    def __str__(self):
        return self.user.username

class Course(models.Model):
    name = models.CharField(max_length = 200)
    credit = models.CharField(max_length=14)
    offer_course_date = models.DateTimeField(default=datetime.now, blank=True)
    
    def __str__(self):
        return self.name


class StudentCourse(models.Model):
    student = models.ForeignKey(Student, on_delete=models.CASCADE)
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    enroll_course_date = models.DateTimeField(default=datetime.now, blank=True)
    def __str__(StudentCourse):
        return StudentCourse.student.user.username + " - " + StudentCourse.course.name 

class TeacherCourse(models.Model):
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    enroll_course_date = models.DateTimeField(default=datetime.now, blank=True)
    def __str__(TeacherCourse):
        return TeacherCourse.teacher.user.username + " - " + TeacherCourse.course.name

class Notice(models.Model):
    teacher = models.ForeignKey(Teacher, on_delete=models.DO_NOTHING)
    title = models.CharField(max_length = 200)
    description = models.TextField(blank=True, null=True)
    hire_date = models.DateTimeField(default=datetime.now, blank=True)
    def __str__(self):
        return self.title

class SubmissionGrade(models.Model):
    teacher = models.ForeignKey(Teacher, on_delete=models.DO_NOTHING)
    student = models.ForeignKey(Student, on_delete=models.CASCADE)
    course = models.ForeignKey(Course, on_delete=models.DO_NOTHING)

    mid1 = models.FloatField(null=True)
    mid2 = models.FloatField(null=True)
    lab = models.FloatField(null=True)
    quiz = models.FloatField(null=True)
    final = models.FloatField(null=True)

    def __str__(self):
        student = str(self.student)
        return student
    def studentName(self):
        student = str(self.student)
        return student

    def total(self):
        return self.mid1 + self.mid2 + self.lab + self.quiz + self.final

    def studentGrade(self):
        totalMark = self.mid1 + self.mid2 + self.lab + self.quiz + self.final

        if totalMark >= 97 and totalMark <=100 :
            return "A+"
        elif(totalMark >= 90 and totalMark <97):
            return "A"
        elif(totalMark >= 87 and totalMark < 90):
            return "A-"
        elif(totalMark >= 85 and totalMark <87):
            return "B+"
        elif(totalMark >= 80 and totalMark < 85):
            return "B-"

        elif(totalMark >= 70 and totalMark <80):
            return "C+"
        elif(totalMark >= 60 and totalMark < 70):
            return "D"