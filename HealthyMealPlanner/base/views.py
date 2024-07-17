from django.shortcuts import render, redirect
from .forms import ContactForm
from django.shortcuts import render, get_object_or_404, redirect
from .models import Recipe, Profile, MealPlan
from .forms import RecipeForm, ProfileForm
from django.contrib.auth import login, authenticate
from django.contrib.auth.forms import AuthenticationForm
from .forms import UserRegisterForm, UserLoginForm,RecipeFilterFor_Nutritional_values,RecipeFilterForm
from django.contrib.auth.decorators import login_required
from datetime import date
import re

def home(request):
    return render(request, 'home.html')
def about(request):
    return render(request, 'about.html')

def contact_view(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('contact_success')  # Redirect to a success page
    else:
        form = ContactForm()
    
    return render(request, 'contact.html', {'form': form})
    
def contact_success_view(request):
    return render(request, 'contact_success.html')

def recipe_list(request):
    recipes = Recipe.objects.all()
    return render(request, 'recipe_list.html', {'recipes': recipes})

def recipe_detail(request, pk):
    recipe = get_object_or_404(Recipe, pk=pk)
    return render(request, 'recipe_detail.html', {'recipe': recipe})

def add_recipe(request):
    if request.method == "POST":
        form = RecipeForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('recipe_list')
    else:
        form = RecipeForm()
    return render(request, 'add_recipe.html', {'form': form})

def register(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            user = form.save()
            user.refresh_from_db()  # load the profile instance created by the signal
            user.profile.food_preference = form.cleaned_data.get('food_preference')
            user.profile.allergic = form.cleaned_data.get('allergic')
            user.profile.allergic_foods = form.cleaned_data.get('allergic_foods')
            user.save()
            raw_password = form.cleaned_data.get('password1')
            user = authenticate(username=user.username, password=raw_password)
            login(request, user)
            return redirect('home')
    else:
        form = UserRegisterForm()
    return render(request, 'register.html', {'form': form})

def login_view(request):
    if request.method == 'POST':
        form = UserLoginForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                return redirect('home')
            else:
                return render(request, 'login.html', {'form': form, 'error': 'Invalid username or password'})
    else:
        form = UserLoginForm()
    return render(request, 'login.html', {'form': form})    


def filter_recipe(request):
    recipes = Recipe.objects.all()
    form = RecipeFilterForm(request.GET)

    if form.is_valid():
        if form.cleaned_data['name']:
            recipes = recipes.filter(name__icontains=form.cleaned_data['name'])
        if form.cleaned_data['recipe_type']:
            recipes = recipes.filter(recipe_type=form.cleaned_data['recipe_type'])
        if form.cleaned_data['meal_type']:
            recipes = recipes.filter(meal_type=form.cleaned_data['meal_type'])
        if form.cleaned_data['cooking_hour'] is not None:
            recipes = recipes.filter(cooking_hour=form.cleaned_data['cooking_hour'])
        if form.cleaned_data['cooking_minute']:
            recipes = recipes.filter(cooking_minute=form.cleaned_data['cooking_minute'])

    return render(request, 'filter_recipe.html', {'recipes': recipes, 'form': form})


def recipe_FilterFor_Nutritional_values(request):
    recipes = Recipe.objects.all()
    form = RecipeFilterFor_Nutritional_values(request.GET)

    if form.is_valid():
        if form.cleaned_data['min_total_fat'] is not None:
            recipes = recipes.filter(total_fat__gte=form.cleaned_data['min_total_fat'])
        if form.cleaned_data['max_total_fat'] is not None:
            recipes = recipes.filter(total_fat__lte=form.cleaned_data['max_total_fat'])
        if form.cleaned_data['min_saturated_fat'] is not None:
            recipes = recipes.filter(saturated_fat__gte=form.cleaned_data['min_saturated_fat'])
        if form.cleaned_data['max_saturated_fat'] is not None:
            recipes = recipes.filter(saturated_fat__lte=form.cleaned_data['max_saturated_fat'])
        if form.cleaned_data['min_cholesterol'] is not None:
            recipes = recipes.filter(cholesterol__gte=form.cleaned_data['min_cholesterol'])
        if form.cleaned_data['max_cholesterol'] is not None:
            recipes = recipes.filter(cholesterol__lte=form.cleaned_data['max_cholesterol'])
        if form.cleaned_data['min_sodium'] is not None:
            recipes = recipes.filter(sodium__gte=form.cleaned_data['min_sodium'])
        if form.cleaned_data['max_sodium'] is not None:
            recipes = recipes.filter(sodium__lte=form.cleaned_data['max_sodium'])
        if form.cleaned_data['min_total_carbohydrate'] is not None:
            recipes = recipes.filter(total_carbohydrate__gte=form.cleaned_data['min_total_carbohydrate'])
        if form.cleaned_data['max_total_carbohydrate'] is not None:
            recipes = recipes.filter(total_carbohydrate__lte=form.cleaned_data['max_total_carbohydrate'])
        if form.cleaned_data['min_dietary_fiber'] is not None:
            recipes = recipes.filter(dietary_fiber__gte=form.cleaned_data['min_dietary_fiber'])
        if form.cleaned_data['max_dietary_fiber'] is not None:
            recipes = recipes.filter(dietary_fiber__lte=form.cleaned_data['max_dietary_fiber'])
        if form.cleaned_data['min_total_sugars'] is not None:
            recipes = recipes.filter(total_sugars__gte=form.cleaned_data['min_total_sugars'])
        if form.cleaned_data['max_total_sugars'] is not None:
            recipes = recipes.filter(total_sugars__lte=form.cleaned_data['max_total_sugars'])
        if form.cleaned_data['min_protein'] is not None:
            recipes = recipes.filter(protein__gte=form.cleaned_data['min_protein'])
        if form.cleaned_data['max_protein'] is not None:
            recipes = recipes.filter(protein__lte=form.cleaned_data['max_protein'])
        if form.cleaned_data['min_vitamin_c'] is not None:
            recipes = recipes.filter(vitamin_c__gte=form.cleaned_data['min_vitamin_c'])
        if form.cleaned_data['max_vitamin_c'] is not None:
            recipes = recipes.filter(vitamin_c__lte=form.cleaned_data['max_vitamin_c'])
        if form.cleaned_data['min_calcium'] is not None:
            recipes = recipes.filter(calcium__gte=form.cleaned_data['min_calcium'])
        if form.cleaned_data['max_calcium'] is not None:
            recipes = recipes.filter(calcium__lte=form.cleaned_data['max_calcium'])
        if form.cleaned_data['min_iron'] is not None:
            recipes = recipes.filter(iron__gte=form.cleaned_data['min_iron'])
        if form.cleaned_data['max_iron'] is not None:
            recipes = recipes.filter(iron__lte=form.cleaned_data['max_iron'])
        if form.cleaned_data['min_potassium'] is not None:
            recipes = recipes.filter(potassium__gte=form.cleaned_data['min_potassium'])
        if form.cleaned_data['max_potassium'] is not None:
            recipes = recipes.filter(potassium__lte=form.cleaned_data['max_potassium'])

    return render(request, 'FilterFor_Nutritional_values.html', {'recipes': recipes, 'form': form})


@login_required
def profile_view(request):
    profile = Profile.objects.get(user=request.user)
    return render(request, 'profile.html', {'profile': profile})

@login_required
def profile_view(request):
    profile, created = Profile.objects.get_or_create(user=request.user)
    if request.method == 'POST':
        form = ProfileForm(request.POST, instance=profile)
        if form.is_valid():
            form.save()
            return redirect('profile')
    else:
        form = ProfileForm(instance=profile)
    return render(request, 'profile.html', {'form': form, 'profile': profile})

@login_required
def progress_view(request):
    profile = Profile.objects.get(user=request.user)
    return render(request, 'progress.html', {'profile': profile})

@login_required
def add_to_meal_plan(request, recipe_id):
    recipe = Recipe.objects.get(id=recipe_id)
    meal_plan, created = MealPlan.objects.get_or_create(user=request.user, date=date.today())
    meal_plan.recipes.add(recipe)
    return redirect('meal_plan')

@login_required
def meal_plan_view(request):
    meal_plan = MealPlan.objects.filter(user=request.user, date=date.today()).first()
    return render(request, 'meal_plan.html', {'meal_plan': meal_plan})

@login_required
def generate_grocery_list(request):
    meal_plan = MealPlan.objects.filter(user=request.user, date=date.today()).first()
    if not meal_plan:
        return render(request, 'grocery_list.html', {'ingredients': {}})
    
    ingredients = []
    for recipe in meal_plan.recipes.all():
        for line in recipe.recipe_content.split(','):
            ingredients.append(line)
    print(ingredients)
    return render(request, 'grocery_list.html', {'ingredients': ingredients})

@login_required
def remove_from_meal_plan(request, recipe_id):
    meal_plan = MealPlan.objects.filter(user=request.user, date=date.today()).first()
    recipe = get_object_or_404(Recipe, id=recipe_id)
    
    if meal_plan:
        meal_plan.recipes.remove(recipe)
    
    return redirect('meal_plan')