from app.src.db import session
from app.src.models.models import CustomerCar, Offices, Employees


def get_car_parts():
    customer_cars = session.query(CustomerCar).all()
    for customer_car in customer_cars:
        print(customer_car)


def get_offices_info():
    offices = session.query(Offices).all()
    for office in offices:
        print(office)


def get_employees_info():
    emp1 = session.query(Employees).filter(Employees.employee_id == 653).first()
    emp2 = session.query(Employees).filter(Employees.employee_id == 655).first()
    # employees = session.query(Employees).all()
    # for employee in employees:
    print(emp1)
    print(emp2)
