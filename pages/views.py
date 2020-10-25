from django.shortcuts import render
from django.http import HttpResponse

from django.contrib.auth.decorators import login_required

from results.models import Notice

# Create your views here.

@login_required
def index(request):

    all_notice = Notice.objects.all()
    context = {
        "notices": all_notice,
    }

    return render(request, 'pages/index.html', context)

def about(request):
    return render(request, 'pages/about.html')
    
##def notice(request):
 ##   return render(request, 'notice/detail.html')
    
