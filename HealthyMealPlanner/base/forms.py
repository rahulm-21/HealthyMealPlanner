from django import forms
from .models import ContactMessage, Recipe
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class RecipeForm(forms.ModelForm):
    class Meta:
        model = Recipe
        fields = [
            'name', 'recipe_type', 'recipe_content', 'nutrients', 
            'cooking_hour', 'cooking_minute', 'meal_type', 'image_url', 'description'
        ]
        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control'}),
            'recipe_type': forms.Select(attrs={'class': 'form-control'}),
            'recipe_content': forms.Textarea(attrs={'class': 'form-control'}),
            'nutrients': forms.Textarea(attrs={'class': 'form-control'}),
            'cooking_hour': forms.NumberInput(attrs={'class': 'form-control'}),
            'cooking_minute': forms.NumberInput(attrs={'class': 'form-control'}),
            'meal_type': forms.Select(attrs={'class': 'form-control'}),
            'image_url': forms.URLInput(attrs={'class': 'form-control'}),
            'description': forms.Textarea(attrs={'class': 'form-control'}),
        }

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


