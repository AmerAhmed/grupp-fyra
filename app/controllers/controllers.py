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
from app.src.models.models_s import Products, CustomerCars
from app.src.models.models_s import Customers, Orders, Resellers
from app.src.models.models_s import Employees, Manufacturer, Offices


def get_manufacturing():
    """
    manufacturers = session.query(Manufacturer).all()
    for manufacturer in manufacturers:
        print('*' * 40)
        print(manufacturer)
    """
    manufacturers = session.query(Manufacturer).filter(Manufacturer.manufacturer_id == 2).first()
    print(manufacturers)


def get_products():
    """
    products = session.query(Products).all()
    for product in products:
        print('*' * 40)
        print(product)
    """
    products = session.query(Products).filter(Products.product_id == 518).first()
    print(products)


def get_cars():
    """
    cars = session.query(CustomerCars).all()
    for car in cars:
        print('*' * 40)
        print(car)
    """
    cars = session.query(CustomerCars).filter(CustomerCars.customerCar_id == 51).first()
    print(cars)


def get_customers():
    """"
    customers = session.query(Customers).all()
    for customer in customers:
        print(customer)
        print('*' * 40)
    """
    customers = session.query(Customers).filter(Customers.customers_id == 70).first()
    print(customers)


def get_orders():
    """
    orders = session.query(Orders).all()
    for order in orders:
        print('*' * 40)
        print(order)
    """

    orders = session.query(Orders).filter(Orders.order_id == 213).first()
    print(orders)


def get_offices():
    """
    offices = session.query(Offices).all()
    for office in offices:
        print('*' * 40)
        print(office)
    """

    offices = session.query(Offices).filter(Offices.offices_id == 51).first()
    print(offices)


def get_employees():
    """
    employees = session.query(Employees).all()
    for employee in employees:
        print('*' * 40)
        print(employee)
    """
    employee = session.query(Employees).filter(Employees.employee_id == 51).first()
    print(employee)


def get_resellers():
    """
    resellers = session.query(Resellers).all()
    for resellers in resellers:
        print('*' * 40)
        print(resellers)
    """

    resellers = session.query(Resellers).filter(Resellers.reseller_id == 51).first()
    print(resellers)
