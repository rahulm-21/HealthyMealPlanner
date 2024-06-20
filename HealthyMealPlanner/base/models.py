from django.db import models
from django.contrib.auth.models import User
import re
       
class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    food_preference = models.CharField(max_length=10, choices=[('veg', 'Vegetarian'), ('nonveg', 'Non-Vegetarian'), ('vegan', 'Vegan')])
    allergic = models.BooleanField(default=False)
    allergic_foods = models.TextField(blank=True)

    def __str__(self):
        return self.user.username