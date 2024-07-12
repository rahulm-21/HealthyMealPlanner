from django.db import models
from django.contrib.auth.models import User
import re

class ContactMessage(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    message = models.TextField()
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.name} - {self.email}"

class Recipe(models.Model):
    TYPE_CHOICES = [
        ('veg', 'Vegetarian'),
        ('non_veg', 'Non-Vegetarian'),
        ('vegan', 'Vegan'),
    ]
    MEAL_TYPE_CHOICES = [
        ('Breakfast', 'Breakfast'),
        ('Lunch', 'Lunch'),
        ('Dinner', 'Dinner'),
    ]
    
    name = models.CharField(max_length=200)
    recipe_type = models.CharField(max_length=10, choices=TYPE_CHOICES)
    recipe_content = models.TextField()
    nutrients = models.TextField()
    cooking_hour = models.IntegerField()
    cooking_minute = models.IntegerField()
    meal_type = models.CharField(max_length=10, choices=MEAL_TYPE_CHOICES)
    image_url = models.URLField()
    description = models.TextField()

    # Nutritional values
    total_fat = models.FloatField(null=True, blank=True)
    saturated_fat = models.FloatField(null=True, blank=True)
    cholesterol = models.FloatField(null=True, blank=True)
    sodium = models.FloatField(null=True, blank=True)
    total_carbohydrate = models.FloatField(null=True, blank=True)
    dietary_fiber = models.FloatField(null=True, blank=True)
    total_sugars = models.FloatField(null=True, blank=True)
    protein = models.FloatField(null=True, blank=True)
    vitamin_c = models.FloatField(null=True, blank=True)
    calcium = models.FloatField(null=True, blank=True)
    iron = models.FloatField(null=True, blank=True)
    potassium = models.FloatField(null=True, blank=True)

    def save(self, *args, **kwargs):
        self.parse_nutrients()
        super().save(*args, **kwargs)

    def parse_nutrients(self):
        nutrients_data = self.nutrients.split(',')
        for nutrient in nutrients_data:
            key, value = nutrient.strip().split(' ')
            value = re.findall(r'\d+', value)[0]
            if key == 'Total Fat':
                self.total_fat = float(value)
            elif key == 'Saturated Fat':
                self.saturated_fat = float(value)
            elif key == 'Cholesterol':
                self.cholesterol = float(value)
            elif key == 'Sodium':
                self.sodium = float(value)
            elif key == 'Total Carbohydrate':
                self.total_carbohydrate = float(value)
            elif key == 'Dietary Fiber':
                self.dietary_fiber = float(value)
            elif key == 'Total Sugars':
                self.total_sugars = float(value)
            elif key == 'Protein':
                self.protein = float(value)
            elif key == 'Vitamin C':
                self.vitamin_c = float(value)
            elif key == 'Calcium':
                self.calcium = float(value)
            elif key == 'Iron':
                self.iron = float(value)
            elif key == 'Potassium':
                self.potassium = float(value)

    def __str__(self):
        return self.name    

class Profile(models.Model):
    SEX_CHOICES = [('M', 'Male'), ('F', 'Female'), ('O', 'Other')]
    FOOD_PREFERENCES = [
        ('veg', 'Vegetarian'),
        ('nonveg', 'Non-Vegetarian'),
        ('vegan', 'Vegan'),
    ]

    user = models.OneToOneField(User, on_delete=models.CASCADE)
    height = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True) 
    weight = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True)
    age = models.PositiveIntegerField(blank=True, null=True)
    sex = models.CharField(max_length=1, choices=SEX_CHOICES, blank=True)
    food_preference = models.CharField(max_length=10, choices=FOOD_PREFERENCES)
    allergic = models.BooleanField(default=False)
    allergic_foods = models.TextField(blank=True)
    daily_calories = models.JSONField(default=dict, blank=True)  

    def __str__(self):
        return self.user.username


class MealPlan(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    recipes = models.ManyToManyField(Recipe)
    date = models.DateField()

    def __str__(self):
        return f"{self.user.username}'s meal plan for {self.date}"

