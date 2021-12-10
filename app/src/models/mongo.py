"""
import datetime
from mongoengine import EmailField, DecimalField, Document, ReferenceField
from mongoengine import StringField, IntField, DateTimeField

def __init__(self, reg_number, brand, model, color, year):
        self.reg_number = reg_number
        self.brand = brand
        self.model = model
        self.color = color
        self.year = year
        
        
    
def __init__(self, first_name, las_name, email, phone, address, city, zip_code, country):
        self.first_name = first_name
        self.last_name = las_name
        self.email = email
        self.phone = phone
        self.address = address
        self.city = city
        self.zip_code = zip_code
        self.country = country


class Manufacturing(Document):
    name = StringField(required=True, max_length=45)
    address = StringField(required=True, max_length=45)
    contact_name = StringField(required=True, max_length=45)
    phone = StringField(unique=True, required=True, max_length=45)
    email = EmailField(unique=True, required=True, max_length=45)
    city = StringField(required=True, max_length=45)
    country = StringField(required=True, max_length=45)
    zip_code = StringField(required=True, max_length=20)

    def __init__(self, address, name, contact_name, phone, email, city, country, zip_code, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.name = name
        self.address = address
        self.contact_name = contact_name
        self.phone = phone
        self.email = email
        self.city = city
        self.country = country
        self.zip_code = zip_code

    meta = {'allow_inheritance': True}


class Suppliers(Document):
    suppliers_name = StringField(required=True, max_length=45)
    address = StringField(required=True, max_length=45)
    contact_name = StringField(required=True, max_length=45)
    phone = StringField(unique=True, required=True, max_length=45)
    email = EmailField(unique=True, required=True, max_length=45)

    def __init__(self, suppliers_name, address, contact_name, phone, email, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.suppliers_name = suppliers_name
        self.address = address
        self.contact_name = contact_name
        self.phone = phone
        self.email = email

    meta = {'allow_inheritance': True}


class Products(Document):
    name = StringField(required=True, max_length=45)
    product_number = StringField(unique=True, required=True, max_length=45)
    product_vendor = StringField(required=True, max_length=45)
    description = StringField(max_length=500)
    quantity = IntField(required=True)
    price = DecimalField(required=True)

    def __init__(self, name, product_number, product_vendor, description, quantity, price, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.name = name
        self.product_number = product_number
        self.product_vendor = product_vendor
        self.description = description
        self.quantity = quantity
        self.price = price

    meta = {'allow_inheritance': True}


class Cars(Document):
    reg_number = StringField(required=True, max_length=7)
    brand = StringField(required=True, max_length=45)
    model = StringField(required=True, max_length=45)
    color = StringField(required=True, max_length=45)
    year = DateTimeField(required=True)

    meta = {'allow_inheritance': True}


class Customers(Document):
    first_name = StringField(required=True, max_length=45)
    last_name = StringField(required=True, max_length=45)
    email = EmailField(unique=True, required=True, max_length=45)
    phone = StringField(unique=True, required=True, max_length=45)
    address = StringField(required=True, max_length=45)
    city = StringField(required=True, max_length=45)
    zip_code = StringField(required=True, max_length=20)
    country = StringField(required=True, max_length=45)
    cars = ReferenceField(Cars)

    meta = {'allow_inheritance': True}


user = Cars(reg_number='AMD 123', brand='VMW', model='DMA', year='2021')
user.save()

customer = Customers(firstname="John", last_name='Smith')
customer.cars = user
customer.save()


class Offices(Document):
    code = StringField(required=True, max_length=45)
    name = StringField(required=True, max_length=45)
    address = StringField(required=True, max_length=45)
    phone = StringField(unique=True, required=True, max_length=45)
    employee_name = StringField(required=True, max_length=45)
    employee_phone = StringField(required=True, max_length=45)
    employee_email = EmailField(required=True, max_length=45)

    def __init__(self, code, name, address, phone, employee_name, employee_phone, employee_email):
        self.code = code
        self.office_name = name
        self.address = address
        self.phone = phone
        self.employee_name = employee_name
        self.employee_phone = employee_phone
        self.employee_email = employee_email

    meta = {'allow_inheritance': True}


class Employees(Document):
    first_name = StringField(required=True, max_length=45)
    last_name = StringField(required=True, max_length=45)
    email = EmailField(unique=True, required=True, max_length=45)
    phone = StringField(unique=True, required=True, max_length=45)
    address = StringField(required=True, max_length=45)
    city = StringField(required=True, max_length=45)
    zip_code = StringField(required=True, max_length=20)
    country = StringField(required=True, max_length=45)

    def __init__(self, first_name, las_name, email, phone, address, city, zip_code, country):
        self.first_name = first_name
        self.last_name = las_name
        self.email = email
        self.phone = phone
        self.address = address
        self.city = city
        self.zip_code = zip_code
        self.country = country


class Orders(Document):
    order_date = DateTimeField(required=True)
    shipped_date = DateTimeField(required=True)
    quantity = IntField(required=True)
    price = DecimalField(required=True)
    date_created = DateTimeField(required=True, default=datetime.datetime.utcnow)

    meta = {'allow_inheritance': True}


def mongo_models():
    for customer in Customers.objects:
        print(customer.name, customer.email)


if __name__ == '__main__':
    mongo_models()
"""