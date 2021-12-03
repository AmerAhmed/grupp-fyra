from app.src.db import session
from app.src.models.models import CustomerCar, Offices


def get_car_parts():
    customer_cars = session.query(CustomerCar).all()
    for customer_car in customer_cars:
        print(customer_car)


def get_offices_info():
    offices = session.query(Offices).filter(Offices.offices_id == 1).first()
    #   for office in offices:
    print(offices)
