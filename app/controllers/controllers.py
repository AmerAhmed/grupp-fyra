from app.src.db import session
from app.src.models.models import CustomerCar, Products, Customers, Orders
from app.src.models.models import Manufacturer
from app.src.models.models import Offices, Employees


# CustomerCar
def get_car_parts():
    customer_cars = session.query(CustomerCar).all()
    # customer_car = session.query(CustomerCar).filter(CustomerCar.customerCar_id == 10).first()
    for customer_car in customer_cars:
        print(customer_car)


# Offices
def get_offices():
    offices = session.query(Offices).all()
    for office in offices:
        print(office)


# Employees
def get_employees():
    emp1 = session.query(Employees).filter(Employees.employee_id == 651).first()
    emp2 = session.query(Employees).filter(Employees.employee_id == 700).first()
    # employees = session.query(Employees).all()
    # for employee in employees:
    print(emp1)
    print(emp2)


# Manufacturer
def get_manufacturing():
    # manufacturers = session.query(Manufacturer).filter(Manufacturer.manufacturer_id == 1).first()
    # print(manufacturers)
    manufacturers = session.query(Manufacturer).all()
    for manufacturer in manufacturers:
        print(manufacturer)


# Products
def get_products():
    products = session.query(Products).filter(Products.product_id == 1).first()
    print(products)

# products = session.query(Products).all()
# for product in products:
# print(product)


# Customers
def get_customers():
    customers = session.query(Customers).filter(Customers.customers_id == 1001).first()
    print(customers)

# customers = session.query(Products).all()
# for customer in customers:
# print(customer)


# Orders
def get_ordered():
    orders = session.query(Orders).filter(Orders.order_id == 1).first()
    print(orders)

# orders = session.query(Orders).all()
# for order in orders:
# print(order)
