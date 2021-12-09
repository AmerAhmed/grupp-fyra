from app.src.dbs import session
from app.src.models.mysql import Customers, Orders, Products, CustomerCars, Resellers
from app.src.models.mysql import Manufacturer, Offices, Employees


def get_manufacturing():
    """
    manufacturers = session.query(Manufacturer).filter(Manufacturer.manufacturer_id == 1).first()
    print(manufacturers)
    """

    manufacturers = session.query(Manufacturer).all()
    for manufacturer in manufacturers:
        print(manufacturer)


def get_products():
    """"
    products1 = session.query(Products).filter(Products.product_id == 315).first()
    products2 = session.query(Products).filter(Products.product_id == 316).first()
    print(products1)
    print(products2)
    """
    products = session.query(Products).all()
    for product in products:
        print(product)


def get_customer_cars():
    customer_cars1 = session.query(CustomerCars).filter(CustomerCars.customerCar_id == 1).first()
    customer_cars2 = session.query(CustomerCars).filter(CustomerCars.customerCar_id == 2).first()
    print(customer_cars1)
    print(customer_cars2)

    customer_cars = session.query(CustomerCars).all()
    for customer_car in customer_cars:
        print(customer_car)


def get_customers():
    """
    customers1 = session.query(Customers).filter(Customers.customers_id == 1).first()
    customers2 = session.query(Customers).filter(Customers.customers_id == 2).first()
    print(customers1)
    print(customers2)
    """
    customers = session.query(Customers).all()
    for customer in customers:
        print(customer)


def get_ordered():
    """
    orders = session.query(Orders).filter(Orders.order_id == 160).first()
    print(orders)
    """
    orders = session.query(Orders).all()
    for order in orders:
        print(order)


def get_offices():
    """
    offices1 = session.query(Offices).filter(Offices.offices_id == 1).first()
    offices2 = session.query(Offices).filter(Offices.offices_id == 2).first()
    print(offices1)
    print(offices2)
    """
    offices = session.query(Offices).all()
    for office in offices:
        print(office)


def get_employees():
    """
    emp1 = session.query(Employees).filter(Employees.employee_id == 1).first()
    emp2 = session.query(Employees).filter(Employees.employee_id == 2).first()
    print(emp1)
    print(emp2)
    """
    employees = session.query(Employees).all()
    for employee in employees:
        print(employee)


def get_resellers():

    reseller1 = session.query(Resellers).filter(Resellers.reseller_id == 1).first()
    reseller2 = session.query(Resellers).filter(Resellers.reseller_id == 2).first()
    print(reseller1)
    print(reseller2)

    """
    resellers = session.query(Resellers).all()
    for resellers in resellers:
        print(resellers)
    """