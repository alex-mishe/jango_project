# Deploy to Local Machine

## Application access
1. Go to http://127.0.0.1:8000/admin/ to access the admin panel and manage users and orders.
2. Go to http://127.0.0.1:8000/place_order/ to place an order.
3. Go to http://127.0.0.1:8000/orders/ to view orders.

# Admin URL:
<img width="300" alt="image" src="https://github.com/user-attachments/assets/80a676fe-16da-4637-835c-0b5770638eae">

# Place order
<img width="436" alt="image" src="https://github.com/user-attachments/assets/b4b3b786-6487-410e-ab09-297f8eeb053b">

# Orders
<img width="186" alt="image" src="https://github.com/user-attachments/assets/f28fa524-0333-4faf-96f3-b205d352d980">

## Prepare Local Environment
```bash
python3 -m venv venv
source venv/bin/activate

# Run Database Migrations
cd pizza_ordering_app
python3 manage.py makemigrations
python3 manage.py migrate
...
# Output example
# Applying sessions.0001_initial... OK

# Create a Superuser for Admin Access
python manage.py createsuperuser

# Run Server
cd pizza_ordering_app
python3 manage.py runserver

#Output:
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).
August 30, 2024 - 14:01:58
Django version 5.1, using settings 'pizza_ordering_app.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CONTROL-C.
```

