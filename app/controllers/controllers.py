from app.src.db import session
from app.src.models.models import CustomerCar


def get_car_parts():
    customer_cars = session.query(CustomerCar).all()
    for customer_car in customer_cars:
        print(customer_car)
