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
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    food_preference = models.CharField(max_length=10, choices=[('veg', 'Vegetarian'), ('nonveg', 'Non-Vegetarian'), ('vegan', 'Vegan')])
    allergic = models.BooleanField(default=False)
    allergic_foods = models.TextField(blank=True)

    def __str__(self):
        return self.user.username