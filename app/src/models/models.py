import datetime
from app.src.db import *
from sqlalchemy import Column, Integer, String
from sqlalchemy import DECIMAL, DateTime
from sqlalchemy import ForeignKey
from sqlalchemy.orm import relationship


class CustomerCar(Base):
    __tablename__ = 'customerCar'

    customerCar_id = Column(Integer, primary_key=True, autoincrement=True)
    reg_number = Column(String(7), nullable=False)
    brand = Column(String(50), nullable=False)
    model = Column(String(50), nullable=False)
    color = Column(String(50), nullable=False)
    years = Column(DateTime, default=datetime.datetime.utcnow())
    customers = relationship('CustomersHasCustomerCar', back_populates='car')
    products = relationship('CustomerCarHasProducts', back_populates='customerCar')

    def __repr__(self):
        return f'{self.reg_number} {self.brand} {self.model} {self.color} {self.years}'


class Offices(Base):
    __tablename__ = 'offices'

    offices_id = Column(Integer, primary_key=True, autoincrement=True)
    offices_code = Column(Integer)
    offices_name = Column(String(50), nullable=False)
    offices_address = Column(String(50), nullable=False)
    phone_number = Column(String(50), nullable=False)
    employee_name = Column(String(50), nullable=False)
    employee_phone_number = Column(String(50), nullable=False)
    employee_email = Column(String(50), nullable=False)
    employee = relationship('Employees', back_populates='offices')

    def __repr__(self):
        return f"""
        {self.offices_code} {self.offices_name}
        {self.offices_address} {self.phone_number}
        {self.employee_name} {self.employee_phone_number} 
        {self.employee_email}
        {self.employee}
        """


class Employees(Base):
    __tablename__ = 'employees'

    employee_id = Column(Integer, primary_key=True, autoincrement=True)
    first_name = Column(String(50), nullable=False)
    last_name = Column(String(50), nullable=False)
    email = Column(String(50), nullable=False)
    phone = Column(String(50), nullable=False)
    offices_offices_id = Column(Integer, ForeignKey('offices.offices_id'), primary_key=True)
    offices = relationship('Offices', back_populates='employee')
    customers = relationship('Customers', back_populates='employee')

    def __repr__(self):
        return f'{self.first_name} {self.last_name} {self.email} {self.phone} {self.offices} {self.customers}'


class Customers(Base):
    __tablename__ = 'customers'

    customers_id = Column(Integer, primary_key=True, autoincrement=True)
    first_name = Column(String(50), nullable=False)
    last_name = Column(String(50), nullable=False)
    address = Column(String(50), nullable=False)
    phone = Column(String(50), nullable=False)
    email = Column(String(50), nullable=False)
    city = Column(String(50), nullable=False)
    state = Column(String(50), nullable=False)
    zip_code = Column(String(50), nullable=False)
    country = Column(String(50), nullable=False)
    employees_employee_id = Column(Integer, ForeignKey('employees.employee_id'), primary_key=True)
    employee = relationship('Employees', back_populates='customers')
    cars = relationship('CustomersHasCustomerCar', back_populates='customer')
    order = relationship('Orders', back_populates='customer')

    def __repr__(self):
        return f"""
        {self.first_name} {self.last_name} {self.address}
        {self.phone} {self.email}{self.city} {self.state}
        {self.zipcode} {self.country} {self.employee} {self.cars} {self.order}   
        """


class Orders(Base):
    __tablename__ = 'orders'

    order_id = Column(Integer, primary_key=True, autoincrement=True)
    order_date = Column(DateTime, default=datetime.datetime.utcnow())
    shipped_date = Column(DateTime, default=datetime.datetime.utcnow())
    customers_customers_id = Column(Integer, ForeignKey('customers.customers_id'), primary_key=True)
    customer = relationship('Customers', back_populates='order')
    orders = relationship('OrderDetails', back_populates='order_details')

    def __repr__(self):
        return f'{self.order_date} {self.shipping_date} {self.customer} - {self.orders}'


class CustomerCarHasProducts(Base):
    __tablename__ = 'customerCar_has_products'

    products_product_id = Column(Integer, ForeignKey('products.product_id'), primary_key=True)
    customerCar_customerCar_id = Column(Integer, ForeignKey('customerCar.customerCar_id'), primary_key=True)
    product = relationship('Products', back_populates='customerCars')
    customerCar = relationship('CustomerCar', back_populates='products')

    def __repr__(self):
        return f'{self.product} {self.customerCar}'


class CustomersHasCustomerCar(Base):
    __tablename__ = 'customers_has_customerCar1'

    customers_customers_id = Column(Integer, ForeignKey('customers.customers_id'), primary_key=True)
    customerCar_customerCar_id = Column(Integer, ForeignKey('customerCar.customerCar_id'), primary_key=True)
    car = relationship('CustomerCar', back_populates='customers')
    customer = relationship('Customers', back_populates='cars')

    def __repr__(self):
        return f'{self.car} {self.customer}'


class OrderDetails(Base):
    __tablename__ = 'orderDetails'

    quantity_ordered = Column(Integer)
    price_each = Column(DECIMAL(10.0))
    created_at = Column(DateTime, default=datetime.datetime.utcnow())
    orders_order_id = Column(Integer, ForeignKey('orders.order_id'), primary_key=True)
    products_product_id = Column(Integer, ForeignKey('products.product_id'), primary_key=True)
    order_details = relationship('Orders', back_populates='orders')
    product_details = relationship('Products', back_populates='product')

    def __repr__(self):
        return f"""
        {self.quantity_ordered} {self.price_each} {self.created_at}
        {self.order_details} {self.product_details}
        """


class Products(Base):
    __tablename__ = 'products'

    product_id = Column(Integer, primary_key=True, autoincrement=True)
    product_name = Column(String(50), nullable=False, unique=True)
    product_number = Column(String(50), nullable=False, unique=True)
    product_vendor = Column(String(50), nullable=False)
    product_description = Column(String(255), nullable=False)
    quantityin_stock = Column(Integer, nullable=False)
    buy_price = Column(DECIMAL(10.0), nullable=False)
    reseller_reseller_id = Column(Integer, ForeignKey('reseller.reseller_id'), primary_key=True)
    reseller = relationship('Reseller', back_populates='products')
    product = relationship('OrderDetails', back_populates='product_details')
    customerCars = relationship('CustomerCarHasProducts', back_populates='product')

    def __repr__(self):
        return f"""
        {self.product_name} {self.product_number} {self.product_vendor}
        {self.product_description} {self.quantityin_stock} {self.buy_price}
        {self.reseller} {self.product} {self.customerCars}
        """


class Reseller(Base):
    __tablename__ = 'reseller'

    reseller_id = Column(Integer, primary_key=True, autoincrement=True)
    reseller_name = Column(String(50), nullable=False)
    reseller_address = Column(String(50), nullable=False)
    reseller_contact_person = Column(String(50), nullable=False)
    reseller_phone_number = Column(String(50), nullable=False)
    reseller_email = Column(String(50), nullable=False)
    manufacturer_manufacturer_id = Column(Integer, ForeignKey('manufacturer.manufacturer_id'), primary_key=True)
    manufacturer = relationship('Manufacturer', back_populates='manufacturers')
    products = relationship('Products', back_populates='reseller')

    def __repr__(self):
        return f"""
        {self.reseller_name} {self.reseller_address} 
        {self.reseller_contact_person} {self.reseller_phone_number} 
        {self.reseller_email} {self.manufacturer} {self.products}
        """


class Manufacturer(Base):
    __tablename__ = 'manufacturer'

    manufacturer_id = Column(Integer, primary_key=True, autoincrement=True)
    manufacturer_name = Column(String(50), nullable=False)
    manufacturers = relationship('Reseller', back_populates='manufacturer')

    def __repr__(self):
        return f'{self.manufacturer_name} {self.manufacturers}'
