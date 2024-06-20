from django import forms
from .models import ContactMessage, Recipe
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class UserRegisterForm(UserCreationForm):
    email = forms.EmailField()
    food_preference = forms.ChoiceField(choices=[('veg', 'Vegetarian'), ('nonveg', 'Non-Vegetarian'), ('vegan', 'Vegan')])
    allergic = forms.BooleanField(required=False)
    allergic_foods = forms.CharField(required=False, help_text="If you are allergic to any food, please list them here.")

    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2', 'food_preference', 'allergic', 'allergic_foods']

class UserLoginForm(forms.Form):
    username = forms.CharField()
    password = forms.CharField(widget=forms.PasswordInput)




