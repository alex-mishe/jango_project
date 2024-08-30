from django.contrib import admin
from django.urls import path
from orders import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('place_order/', views.place_order, name='place_order'),
    path('orders/', views.order_list, name='order_list'),
]
