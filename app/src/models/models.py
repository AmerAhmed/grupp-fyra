"""
The main entry point for Relational Database in MySQL!
Amer Ahmed
Alexander Amaechi
Abshir Mohamed
Elvir Velagic
Supervisor: Joakim Wassberg
Version 0.0.1
"""


import datetime
from app.src.db import Base
from sqlalchemy import Column, Integer, String
from sqlalchemy import DECIMAL, DateTime
from sqlalchemy import ForeignKey
from sqlalchemy.orm import relationship


class CustomersHasCustomerCar(Base):
    __tablename__ = 'customers_has_customerCars1'

    customerCars_customerCar_id = Column(Integer, ForeignKey('customerCars.customerCar_id'), primary_key=True)
    customers_customers_id = Column(Integer, ForeignKey('customers.customers_id'), primary_key=True)
    car = relationship('CustomerCars', back_populates='customers_cars')
    owner_car = relationship('Customers', back_populates='customers_has_car')

    def __repr__(self):
        return f'{self.car}'


class CustomerCarHasProducts(Base):
    __tablename__ = 'customerCars_has_products'

    product_id = Column(Integer, ForeignKey('products.product_id'), primary_key=True)
    customerCar_id = Column(Integer, ForeignKey('customerCars.customerCar_id'), primary_key=True)
    product_has_products = relationship('Products', back_populates='product_has_cars')
    rel_Car_has_products = relationship('CustomerCars', back_populates='customerCars_has_products')

    def __repr__(self):
        return f'{self.product_has_products} {self.customerCar_has_products}'


class Products(Base):
    __tablename__ = 'products'

    product_id = Column(Integer, primary_key=True, autoincrement=True)
    product_name = Column(String(100), nullable=False, unique=True)
    product_number = Column(String(100), nullable=False, unique=True)
    product_vendor = Column(String(100), nullable=False)
    product_description = Column(String(255), nullable=False)
    quantityin_stock = Column(Integer, nullable=False)
    buy_price = Column(DECIMAL(10, 2), nullable=False)
    resellers_reseller_id = Column(Integer, ForeignKey('resellers.reseller_id'), primary_key=True)
    resellers = relationship('Resellers', back_populates='products')
    orders = relationship('Orders', back_populates='product')
    product_has_cars = relationship('CustomerCarHasProducts', back_populates='product_has_products')

    def __repr__(self):
        return f"""
        ProductsID:  {self.product_id}
        ProductName: {self.product_name}
        ProductNumber: {self.product_number}
        ProductVendor: {self.product_vendor}
        ProductDescription: {self.product_description}
        QuantityInStock: {self.quantityin_stock}
        BuyPrice: {self.buy_price}
        """


class Customers(Base):
    __tablename__ = 'customers'

    customers_id = Column(Integer, primary_key=True, autoincrement=True)
    first_name = Column(String(100), nullable=False)
    last_name = Column(String(100), nullable=False)
    address = Column(String(100), nullable=False)
    phone = Column(String(100), nullable=False)
    email = Column(String(100), nullable=False)
    city = Column(String(100), nullable=False)
    zip_code = Column(String(100), nullable=False)
    country = Column(String(100), nullable=False)
    employees_employee_id = Column(Integer, ForeignKey('employees.employee_id'), primary_key=True)
    employee = relationship('Employees', back_populates='customers')
    order = relationship('Orders', back_populates='customer')
    customers_has_car = relationship('CustomersHasCustomerCar', back_populates='owner_car')

    def __repr__(self):
        return f"""
        CustomersID: {self.customers_id}
        Fullname: {self.first_name} {self.last_name}
        Address: {self.address}
        Phone: {self.phone}
        Email: {self.email} 
        City: {self.city}
        ZipCode: {self.zip_code} 
        Country: {self.country} 
        Customers_has_car: {self.customers_has_car} 
        """


class CustomerCars(Base):
    __tablename__ = 'customerCars'

    customerCar_id = Column(Integer, primary_key=True, autoincrement=True)
    reg_number = Column(String(7), nullable=False)
    brand = Column(String(100), nullable=False)
    model = Column(String(100), nullable=False)
    color = Column(String(50), nullable=False)
    years = Column(DateTime, default=datetime.datetime.utcnow)
    customers_cars = relationship('CustomersHasCustomerCar', back_populates='car')
    customerCars_has_products = relationship('CustomerCarHasProducts',  back_populates='rel_Car_has_products')

    def __repr__(self):
        return f"""
        CustomerCarDI: {self.customerCar_id}
        RegisterNumber: {self.reg_number}
        CarBrand: {self.brand}
        CarModel: {self.model}
        CarColor: {self.color} 
        YearMade: {self.years}
         """


class Offices(Base):
    __tablename__ = 'offices'

    offices_id = Column(Integer, primary_key=True, autoincrement=True)
    offices_code = Column(Integer)
    offices_name = Column(String(100), nullable=False)
    address = Column(String(100), nullable=False)
    phone = Column(String(100), nullable=False)
    employee_name = Column(String(100), nullable=False)
    employee_phone = Column(String(100), nullable=False)
    employee_email = Column(String(100), nullable=False)
    employee = relationship('Employees', back_populates='offices')

    def __repr__(self):
        return f"""
        OfficesID: {self.offices_id}
        OfficesCode: {self.offices_code} 
        OfficesName: {self.offices_name} 
        Addresses: {self.address} 
        Phone: {self.phone}
        EmployeesName: {self.employee_name} 
        EmployeesPhone: {self.employee_phone} 
        EmployeesEmail: {self.employee_email}
        ********************************
        EmployeesInfo: {self.employee}
        """


class Employees(Base):
    __tablename__ = 'employees'

    employee_id = Column(Integer, primary_key=True, autoincrement=True)
    first_name = Column(String(100), nullable=False)
    last_name = Column(String(100), nullable=False)
    email = Column(String(100), nullable=False)
    phone = Column(String(100), nullable=False)
    offices_offices_id = Column(Integer, ForeignKey('offices.offices_id'), primary_key=True)
    offices = relationship('Offices', back_populates='employee')
    customers = relationship('Customers', back_populates='employee')

    def __repr__(self):
        return f"""
        EmployeeID: {self.employee_id}
        FirstName: {self.first_name} 
        LastName: {self.last_name} 
        Email: {self.email} 
        Phone: {self.phone}
        ********************************
        CustomerDetails: {self.customers}
        """


class Orders(Base):
    __tablename__ = 'orders'

    order_id = Column(Integer, primary_key=True, autoincrement=True)
    quantity_ordered = Column(Integer)
    price_each = Column(DECIMAL(10, 2))
    order_date = Column(DateTime, default=datetime.datetime.utcnow)
    shipped_date = Column(DateTime, default=datetime.datetime.utcnow)
    created_at = Column(DateTime, default=datetime.datetime.utcnow)
    products_product_id = Column(Integer, ForeignKey('products.product_id'), primary_key=True)
    product = relationship('Products', back_populates='orders')
    customers_customers_id = Column(Integer, ForeignKey('customers.customers_id'), primary_key=True)
    customer = relationship('Customers', back_populates='order')

    def __repr__(self):
        return f"""
               *************
               OrderDetails:
               *************
               OrdersID: {self.order_id}
               quantityOrdered: {self.quantity_ordered}
               PriceEach: {self.price_each}
               OrderDate: {self.order_date} 
               ShippedDate: {self.shipped_date} 
               Created_at: {self.created_at}
               {self.customer}
               """


class Resellers(Base):
    __tablename__ = 'resellers'

    reseller_id = Column(Integer, primary_key=True, autoincrement=True)
    reseller_name = Column(String(100), nullable=False)
    address = Column(String(100), nullable=False)
    contact_name = Column(String(100), nullable=False)
    phone = Column(String(100), nullable=False)
    email = Column(String(100), nullable=False)
    manufacturer_manufacturer_id = Column(Integer, ForeignKey('manufacturer.manufacturer_id'), primary_key=True)
    manufacturer = relationship('Manufacturer', back_populates='resellers')
    products = relationship('Products', back_populates='resellers')

    def __repr__(self):
        return f"""
            ResellerID: {self.reseller_id}
            Name: {self.reseller_name}
            Address: {self.address}
            ContactPerson: {self.contact_name}
            Phone: {self.phone} 
            Email: {self.email}
            """


class Manufacturer(Base):
    __tablename__ = 'manufacturer'

    manufacturer_id = Column(Integer, primary_key=True, autoincrement=True)
    manufacturer_name = Column(String(100), nullable=False)
    address = Column(String(100), nullable=False)
    contact_name = Column(String(100), nullable=False)
    phone = Column(String(100), nullable=False)
    email = Column(String(100), nullable=False)
    city = Column(String(100), nullable=False)
    country = Column(String(100), nullable=False)
    zip_code = Column(String(100), nullable=False)
    resellers = relationship('Resellers', back_populates='manufacturer')

    def __repr__(self):
        return f"""
               ******************
               ManufacturingInfo:
               ******************
               ManufacturingID: {self. manufacturer_id}
               Name: {self.manufacturer_name}
               Address: {self.address}
               ContactPerson: {self.contact_name} 
               Phone: {self.phone} 
               Email: {self.email}
               City: {self.city}
               ZipCode: {self.country} 
               Country: {self.zip_code}
               """
