from django.db import models
from django.contrib.auth.models import User
import re

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

    def save(self, *args, **kwargs):
        self.parse_nutrients()
        super().save(*args, **kwargs)

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

