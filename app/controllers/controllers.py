from app.source.db import session
from app.source.models.mysql_model import Products, CustomerCars
from app.source.models.mysql_model import Customers, Orders, Resellers
from app.source.models.mysql_model import Employees, Manufacturer, Offices


def get_manufacturing():
    """
    manufacturers = session.query(Manufacturer).all()
    for manufacturer in manufacturers:
        print(manufacturer)
    """

    manufacturers = session.query(Manufacturer).filter(Manufacturer.manufacturer_id == 1).first()
    print(manufacturers)


def get_products():
    """
    products = session.query(Products).all()
    for product in products:
        print(product)
    """

    products = session.query(Products).filter(Products.product_id == 315).first()
    print(products)


def get_customer_cars():
    """
    customer_cars = session.query(CustomerCars).all()
    for customer_car in customer_cars:
        print(customer_car)
    """
    customer_cars = session.query(CustomerCars).filter(CustomerCars.customerCar_id == 2).first()
    print(customer_cars)


def get_customers():

    customers = session.query(Customers).all()
    for customer in customers:
        print(customer)

    """
    customers = session.query(Customers).filter(Customers.customers_id == 3).first()
    print(customers)
    """


def get_orders():

    orders = session.query(Orders).all()
    for order in orders:
        print(order)

    """
    orders = session.query(Orders).filter(Orders.order_id == 161).first()
    print(orders)
    """


def get_offices():
    offices = session.query(Offices).all()
    for office in offices:
        print(office)

    offices = session.query(Offices).filter(Offices.offices_id == 2).first()
    print(offices)


def get_employees():
    """
    employees = session.query(Employees).all()
    for employee in employees:
        print(employee)
    """

    employee = session.query(Employees).filter(Employees.employee_id == 3).first()
    print(employee)


def get_resellers():
    """
    resellers = session.query(Resellers).all()
    for resellers in resellers:
        print(resellers)

    """

    resellers = session.query(Resellers).filter(Resellers.reseller_id == 1).first()
    print(resellers)
