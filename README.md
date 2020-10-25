# RMS
Student Result Management System
East West University

Developer:
    Name: Md. Obaydullah
    Id: 2016-3-60-030
    Department of Computer Science & University
    East West University


[![Python Version](Python 3.7.4)](https://python.org)
[![Django Version](2.1.11)](https://djangoproject.com)
[!Database](PostgreSQL)(https://www.postgresql.org/)

Some Info about project:
    Student Result Management System is my first Django project!! Where teacher/admin can create,delete,update information of student and update notice for student and tecaher can see his/her information and course details etc. Student can see his results,courses and important notice and can know about university. Tecaher can give notice for students. And finally admin can do anything.


## Running the Project Locally.

At first,
    Open Visual Studio Code/PyCharm

then, open folder -> project_rms

then, open terminal.

At first, you have to run virtual environment.
so, go to folder venv>Scripts>activate.bat
activate.bat copy and paste into your terminal .
Created virtual environment.

Need a some install process for run this project into your terminal.

Install the requirements:

Apply the migrations:

'''
python manage.py makemigrations

'''
python manage.py migrate

'''

Finally, run the development server:


python manage.py runserver


The project will be available at

#For any user:

One Student Information(for time consume):
    username: obaydullah
    password: cseornob88

http://127.0.0.1:8000/accounts/register

or

http://127.0.0.1:8000/accounts/login

or

http://127.0.0.1:8000/accounts/dashboard


#For Admin:

http://127.0.0.1:8000/admin/


One Admin Information(for time consume):
        username: obaydullah
        password: cseornob88

#Otherwise, you can create a new student/new teacher/ new admin.

Note: You can not login same time in admin panel and general panel.May be it will be interrupt.

Happy Coding!!

Thank you so much for watching my project.
