from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth.models import User, auth

#from django.contrib.auth.decorators import login_required, permission_required

from results.models import SubmissionGrade



def register(request):
    if request.method == 'POST':
        #Get form values
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']
        password2 = request.POST['password2']

        #check if passwords match
        if password == password2:
           #Check username
            if User.objects.filter(username=username).exists():
                messages.error(request, 'That username is taken')
                return redirect('register')
            else:
                if User.objects.filter(email=email).exists():
                    messages.error(request, 'That email is being used')
                    return redirect('register')
                else:
                    #Looks good
                    user = User.objects.create_user(username=username, password=password, email=email, 
                    first_name=first_name, last_name=last_name)
                    #Login after register
                    #auth.login(request, user)
                    #messages.success(request, 'You are now logged in')
                    #return redirect('index')
                    user.save()
                    messages.success(request, 'You are now registered and can log in')
                    return redirect('login')
        else:
                messages.error(request, 'Password do not match')
                return redirect('register')
    else:
        return render(request, 'accounts/register.html')

def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        
        user = auth.authenticate(username=username, password=password)
        

        if user is not None:
            auth.login(request, user)
            messages.success(request, 'You are now logged in')
            return redirect('dashboard')
        else:
            messages.error(request, 'Invalid credentials')
            return redirect('login')
    else:
        return render(request, 'accounts/login.html')

def logout(request):
    if request.method == 'POST':
        auth.logout(request)
        messages.success(request, 'You are now logged out')
        return redirect('index')


#@login_required
def dashboard(request):

   #all_data = Submissiongrade.objects.all()

    #context = {
    #    "grades": all_data,
    #}

   # print(f"\n\nCurrent User This {request}\n\n")
    return render(request, 'accounts/dashboard.html')


#@login_required
def viewGrade(request):
    all_data = SubmissionGrade.objects.all()

    print("\n\n\n")
    for data in all_data:
        print(f"Data: {data}")

    context = {
        "grades": all_data,
    }

    return render(request, "accounts/viewgrade.html", context)
