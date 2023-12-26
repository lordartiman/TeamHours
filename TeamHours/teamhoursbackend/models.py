from django.db import models

# Create your models here.

class Employee(models.Model):
    name = models.CharField(max_length=255)

class Project(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField()
    status = models.CharField(max_length=50)
    start_date = models.DateField()
    end_date = models.DateField()

class HoursWorked(models.Model):
    employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    project = models.ForeignKey(Project, on_delete=models.CASCADE)
    week_starting = models.DateField()
    hours_worked = models.IntegerField()