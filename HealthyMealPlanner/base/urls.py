from django.urls import path
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('', views.home, name='home'),
    #  path('about/', views.about, name='about'),
    # path('contact/', views.contact_view, name='contact'),
    #  path('contact/success/', views.contact_success_view, name='contact_success'),
    # path('recipes/', views.recipe_list, name='recipe_list'),
    # path('recipe/<int:pk>/', views.recipe_detail, name='recipe_detail'),
    path('add/', views.add_recipe, name='add_recipe'),
    path('register/', views.register, name='register'),
    # path('filter_recipe/', views.filter_recipe, name='filter_recipe'),
    # path('recipe_FilterFor_Nutritional_values/', views.recipe_FilterFor_Nutritional_values, name='recipe_FilterFor_Nutritional_values'),
    path('login/', views.login_view, name='login'),
    path('logout/', auth_views.LogoutView.as_view(), name='logout'),
]
