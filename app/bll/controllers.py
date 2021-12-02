from app.dll.db import session
from app.dll.models.models import CustomerCar


def get_car_parts():
    customer_cars = session.query(CustomerCar).all()
    for customer_car in customer_cars:
        print(customer_car)
