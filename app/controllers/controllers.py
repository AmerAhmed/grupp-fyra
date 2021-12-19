"""
The main entry point for Relational Database in MySQL!
Amer Ahmed
Alexander Amaechi
Abshir Mohamed
Elvir Velagic
Supervisor: Joakim Wassberg
Version 0.0.1
"""

from app.src.db import session
from app.src.models.models import Products, CustomerCars
from app.src.models.models import Customers, Orders, Resellers
from app.src.models.models import Employees, Manufacturer, Offices


def get_products():
    products = session.query(Products).all()
    for product in products:
        print(product)
        print('*' * 40)
    """
    products = session.query(Products).filter(Products.product_id == 568).first()
    print(products)
    print('*' * 40)
    """


def get_cars():
    cars = session.query(CustomerCars).all()
    for car in cars:
        print(car)
        print('*' * 40)
    """
    cars = session.query(CustomerCars).filter(CustomerCars.customerCar_id == 51).first()
    print(cars)
    print('*' * 40)
    """


def get_orders():
    """
    orders = session.query(Orders).all()
    for order in orders:
        print(order)
        print('*' * 40)
    """
    orders = session.query(Orders).filter(Orders.order_id == 263).first()
    print(orders)
    print('*' * 40)


def get_customers():
    """
    customers = session.query(Customers).all()
    for customer in customers:
        print(customer)
        print('*' * 40)
    """
    customers = session.query(Customers).filter(Customers.customers_id == 53).first()
    print(customers)
    print('*' * 40)


def get_employees():
    """
    employees = session.query(Employees).all()
    for employee in employees:
        print(employee)
        print('*' * 40)

    """
    employee = session.query(Employees).filter(Employees.employee_id == 51).first()
    print(employee)
    print('*' * 40)


def get_offices():
    """
    offices = session.query(Offices).all()
    for office in offices:
        print(office)
        print('*' * 40)
    """
    offices = session.query(Offices).filter(Offices.offices_id == 51).first()
    print(offices)
    print('*' * 40)


def get_resellers():
    """
    resellers = session.query(Resellers).all()
    for resellers in resellers:
        print(resellers)
        print('*' * 40)
    """
    resellers = session.query(Resellers).filter(Resellers.reseller_id == 101).first()
    print(resellers)
    print('*' * 40)


def get_manufacturing():
    manufacturers = session.query(Manufacturer).all()
    for manufacturer in manufacturers:
        print(manufacturer)
        print('*' * 40)
    """
    manufacturers = session.query(Manufacturer).filter(Manufacturer.manufacturer_id == 2).first()
    print(manufacturers)
    """