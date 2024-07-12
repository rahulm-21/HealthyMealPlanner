from django import forms
from .models import ContactMessage, Recipe
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class ContactForm(forms.ModelForm):
    class Meta:
        model = ContactMessage
        fields = ['name', 'email', 'message']
        widget = {
            "name": forms.TextInput(attrs= {'class': "form-control"}),
            "email":forms.TextInput(attrs= {'class': "form-control"}),
            "message": forms.TextInput(attrs= {'class': "form-control"}),
        }

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

class RecipeFilterForm(forms.Form):
    name = forms.CharField(max_length=200, required=False)
    recipe_type = forms.ChoiceField(choices=[('', 'All')] + Recipe.TYPE_CHOICES, required=False)
    meal_type = forms.ChoiceField(choices=[('', 'All')] + Recipe.MEAL_TYPE_CHOICES, required=False)
    cooking_hour = forms.IntegerField(required=False)
    cooking_minute = forms.ChoiceField(choices=[('', 'All'), (0, '00'), (15, '15'), (30, '30'), (45, '45')], required=False)

class RecipeFilterFor_Nutritional_values(forms.Form):
    min_total_fat = forms.FloatField(required=False, label='Min Total Fat (g)')
    max_total_fat = forms.FloatField(required=False, label='Max Total Fat (g)')
    min_saturated_fat = forms.FloatField(required=False, label='Min Saturated Fat (g)')
    max_saturated_fat = forms.FloatField(required=False, label='Max Saturated Fat (g)')
    min_cholesterol = forms.FloatField(required=False, label='Min Cholesterol (mg)')
    max_cholesterol = forms.FloatField(required=False, label='Max Cholesterol (mg)')
    min_sodium = forms.FloatField(required=False, label='Min Sodium (mg)')
    max_sodium = forms.FloatField(required=False, label='Max Sodium (mg)')
    min_total_carbohydrate = forms.FloatField(required=False, label='Min Total Carbohydrate (g)')
    max_total_carbohydrate = forms.FloatField(required=False, label='Max Total Carbohydrate (g)')
    min_dietary_fiber = forms.FloatField(required=False, label='Min Dietary Fiber (g)')
    max_dietary_fiber = forms.FloatField(required=False, label='Max Dietary Fiber (g)')
    min_total_sugars = forms.FloatField(required=False, label='Min Total Sugars (g)')
    max_total_sugars = forms.FloatField(required=False, label='Max Total Sugars (g)')
    min_protein = forms.FloatField(required=False, label='Min Protein (g)')
    max_protein = forms.FloatField(required=False, label='Max Protein (g)')
    min_vitamin_c = forms.FloatField(required=False, label='Min Vitamin C (mg)')
    max_vitamin_c = forms.FloatField(required=False, label='Max Vitamin C (mg)')
    min_calcium = forms.FloatField(required=False, label='Min Calcium (mg)')
    max_calcium = forms.FloatField(required=False, label='Max Calcium (mg)')
    min_iron = forms.FloatField(required=False, label='Min Iron (mg)')
    max_iron = forms.FloatField(required=False, label='Max Iron (mg)')
    min_potassium = forms.FloatField(required=False, label='Min Potassium (mg)')
    max_potassium = forms.FloatField(required=False, label='Max Potassium (mg)')

class ProfileForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ['height', 'weight', 'age', 'sex', 'food_preference', 'allergic', 'allergic_foods']

