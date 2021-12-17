"""
The main entry point for Object-Document Mapping in MongoDB!
Amer Ahmed
Alexander Amaechi
Elvir Velagic
Abshir Mohamed
Supervisor: Joakim Wassberg
Version 0.0.1
"""

import datetime
from mongoengine import EmailField, DecimalField, Document
from mongoengine import StringField, IntField, DateTimeField


class Customers(Document):
    email = EmailField(equired=True, unique=True)
    first_name = StringField(max_length=50, required=True)
    last_name = StringField(max_length=50, required=True)
    phone = StringField(required=True, unique=True)
    address = StringField(max_length=50, required=True)
    postal_code = StringField(max_length=20, required=True)
    city = StringField(max_length=50, required=True)
    country = StringField(max_length=50, required=True)

    def __init__(self, email, first_name, last_name, phone, address,
                 postal_code, city, country, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.email = email
        self.first_name = first_name
        self.last_name = last_name
        self.phone = phone
        self.address = address
        self.postal_code = postal_code
        self.city = city
        self.country = country

    meta = {'collection': 'customers'}


class Products(Document):
    prod_name = StringField(max_length=50, required=True)
    prod_number = StringField(max_length=50, required=True)
    prod_vendor = StringField(max_length=50, required=True)
    quantityin_stock = IntField(required=True)
    buy_price = DecimalField(precision=2)
    description = StringField(max_length=200)

    def __init__(self, prod_name, prod_number, prod_vendor, quantityin_stock, buy_price,
                 description, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.prod_name = prod_name
        self.prod_number = prod_number
        self.prod_vendor = prod_vendor
        self.quantityin_stock = quantityin_stock
        self.buy_price = buy_price
        self.description = description

    meta = {'collection': 'products'}


class Orders(Document):
    quantity_ordered = IntField(max_length=50, required=True)
    order_date = DateTimeField(required=True)
    price_each = DecimalField(precision=2)
    shipped_date = DateTimeField(required=True)
    created_at = DateTimeField(default=datetime.datetime.utcnow)

    def __init__(self, quantity_ordered, order_date, price_each, shipped_date, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.quantity_ordered = quantity_ordered
        self.order_date = order_date
        self.price_each = price_each
        self.shipped_date = shipped_date

    meta = {'collection': 'orders'}


class Cars(Document):
    register_number = StringField(max_length=7, required=True)
    brand = StringField(max_length=50, required=True)
    model = StringField(max_length=50, required=True)
    color = StringField(max_length=50, required=True)
    year = DateTimeField(max_length=50, required=True)

    def __init__(self, register_number, brand, model, color, year, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.register_number = register_number
        self.brand = brand
        self.model = model
        self.color = color
        self.year = year

    meta = {'collection': 'cars'}


class Employees(Document):
    email = EmailField(max_length=50, required=True, unique=True)
    first_name = StringField(max_length=50, required=True)
    last_name = StringField(max_length=50, required=True)
    phone = StringField(max_length=50, unique=True, required=True)
    address = StringField(max_length=50, required=True)
    city = StringField(max_length=50, required=True)
    postal_code = StringField(max_length=20, required=True)
    country = StringField(max_length=50, required=True)

    def __init__(self, email, first_name, last_name, phone, address, city,
                 postal_code, country, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.email = email
        self.first_name = first_name
        self.last_name = last_name
        self.phone = phone
        self.address = address
        self.city = city
        self.postal_code = postal_code
        self.country = country

    meta = {'collection': 'employees'}


class Offices(Document):
    office_name = StringField(max_length=50, required=True)
    address = StringField(max_length=50, required=True)
    phone = StringField(max_length=50, required=True, unique=True)
    employee_fullname = StringField(max_length=50, required=True)
    employee_phone = StringField(max_length=50, required=True, unique=True)
    employee_email = EmailField(max_length=50, required=True, unique=True)

    def __init__(self, office_name, address, phone, employee_fullname, employee_phone,
                 employee_email,  *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.office_name = office_name
        self.address = address
        self.phone = phone
        self.employee_fullname = employee_fullname
        self.employee_phone = employee_phone
        self.employee_email = employee_email

    meta = {'collection': 'offices'}


class Suppliers(Document):
    email = EmailField(required=True, max_length=50, unique=True)
    name = StringField(required=True, max_length=50)
    phone = StringField(required=True, unique=True, max_length=50)
    address = StringField(required=True, max_length=50)
    city = StringField(max_length=50, required=True)
    postal_code = StringField(max_length=20, required=True)
    country = StringField(max_length=50, required=True)

    def __init__(self, email, name, phone, address,
                 postal_code, city, country, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.email = email
        self.name = name
        self.phone = phone
        self.address = address
        self.city = city
        self.postal_code = postal_code
        self.country = country

    meta = {'collection': 'suppliers'}


class Manufacturers(Document):
    email = EmailField(max_length=50, required=True, unique=True)
    name = StringField(max_length=50, required=True)
    phone = StringField(max_length=50, unique=True, required=True)
    contact_fullname = StringField(max_length=50, required=True)
    address = StringField(max_length=50, required=True)
    city = StringField(max_length=50, required=True)
    postal_code = StringField(max_length=20)
    country = StringField(max_length=50, required=True)

    def __init__(self, email, name, address, contact_fullname, phone,
                 city, postal_code, country, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.email = email
        self.name = name
        self.contact_fullname = contact_fullname
        self.address = address
        self.phone = phone
        self.city = city
        self.postal_code = postal_code
        self.country = country

    meta = {'collection': 'manufacturers'}
