import datetime
from app.src.db import *
from sqlalchemy import Column, Integer, String
from sqlalchemy import DECIMAL, DateTime
from sqlalchemy import ForeignKey
from sqlalchemy.orm import relationship


class CustomersHasCustomerCar(Base):
    __tablename__ = 'customers_has_customerCar1'

    customerCar_customerCar_id = Column(Integer, ForeignKey('customerCar.customerCar_id'), primary_key=True)
    customers_customers_id = Column(Integer, ForeignKey('customers.customers_id'), primary_key=True)
    car = relationship('CustomerCar', back_populates='customers_cars')
    owner_car = relationship('Customers', back_populates='customers_has_car')

    def __repr__(self):
        return f'{self.car} {self.owner_car}'


class CustomerCarHasProducts(Base):
    __tablename__ = 'customerCar_has_products'

    products_product_id = Column(Integer, ForeignKey('products.product_id'), primary_key=True)
    customerCar_customerCar_id = Column(Integer, ForeignKey('customerCar.customerCar_id'), primary_key=True)
    product_has_products = relationship('Products', back_populates='product_has_cars')
    customerCar_has_products = relationship('CustomerCar', back_populates='cars_has_products')

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
    reseller_reseller_id = Column(Integer, ForeignKey('reseller.reseller_id'), primary_key=True)
    reseller = relationship('Reseller', back_populates='products')
    order_details = relationship('OrderDetails', back_populates='product_details')
    product_has_cars = relationship('CustomerCarHasProducts', back_populates='product_has_products')

    def __repr__(self):
        return f"""
        ProductName: {self.product_name}
        ProductNumber: {self.product_number}
        ProductVendor: {self.product_vendor}
        ProductDescription: {self.product_description}
        QuantityInStock: {self.quantityin_stock}
        BuyPrice: {self.buy_price}
        OrderDetails: {self.order_details}
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
        Fullname: {self.first_name} {self.last_name}
        Address: {self.address}
        Phone: {self.phone}
        Email: {self.email} 
        City: {self.city}
        ZipCode: {self.zip_code} 
        Country: {self.country}  
        Ordered: {self.order}
        Customers_has_customerCar: {self.customers_has_car}

        """


class CustomerCar(Base):
    __tablename__ = 'customerCar'

    customerCar_id = Column(Integer, primary_key=True, autoincrement=True)
    reg_number = Column(String(7), nullable=False)
    brand = Column(String(100), nullable=False)
    model = Column(String(100), nullable=False)
    color = Column(String(50), nullable=False)
    years = Column(DateTime, default=datetime.datetime.utcnow)
    customers_cars = relationship('CustomersHasCustomerCar', back_populates='car')
    cars_has_products = relationship('CustomerCarHasProducts',  back_populates='customerCar_has_products')

    def __repr__(self):
        return f"""
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
        ************
        OfficesInfo:
        ************
        {self.offices_code} {self.offices_name} {self.address} {self.phone}
        {self.employee_name} {self.employee_phone} {self.employee_email}\t\n
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
        EmployeeFirstName: {self.first_name} 
        EmployeeLastName: {self.last_name} 
        EmployeeEmail: {self.email} 
        EmployeePhone: {self.phone}\n\n
        CustomersInfo: {self.customers}
        """


class Orders(Base):
    __tablename__ = 'orders'

    order_id = Column(Integer, primary_key=True, autoincrement=True)
    order_date = Column(DateTime, default=datetime.datetime.utcnow)
    shipped_date = Column(DateTime, default=datetime.datetime.utcnow)
    customers_customers_id = Column(Integer, ForeignKey('customers.customers_id'), primary_key=True)
    customer = relationship('Customers', back_populates='order')
    orders = relationship('OrderDetails', back_populates='order')

    def __repr__(self):
        return f'OrderDate: {self.order_date} ShippedDate: {self.shipped_date}'


class OrderDetails(Base):
    __tablename__ = 'orderDetails'

    quantity_ordered = Column(Integer)
    price_each = Column(DECIMAL(10, 2))
    created_at = Column(DateTime, default=datetime.datetime.utcnow)
    orders_order_id = Column(Integer, ForeignKey('orders.order_id'), primary_key=True)
    products_product_id = Column(Integer, ForeignKey('products.product_id'), primary_key=True)
    order = relationship('Orders', back_populates='orders')
    product_details = relationship('Products', back_populates='order_details')

    def __repr__(self):
        return f"""
        QuantityOredered: {self.quantity_ordered}
        PriceEach: {self.price_each}
        Created_at: {self.created_at}
        Ordered: {self.order}
        ProductDetails: {self.product_details}
        """


class Reseller(Base):
    __tablename__ = 'reseller'

    reseller_id = Column(Integer, primary_key=True, autoincrement=True)
    reseller_name = Column(String(100), nullable=False)
    address = Column(String(100), nullable=False)
    contact_name = Column(String(100), nullable=False)
    phone = Column(String(100), nullable=False)
    email = Column(String(100), nullable=False)
    manufacturer_manufacturer_id = Column(Integer, ForeignKey('manufacturer.manufacturer_id'), primary_key=True)
    manufacturer = relationship('Manufacturer', back_populates='resellers')
    products = relationship('Products', back_populates='reseller')

    def __repr__(self):
        return f"""
            ResellerName: {self.reseller_name}
            ResellerAddress: {self.address}
            ResellerContactName: {self.contact_name}
            ResellerPhone: {self.phone} 
            ResellerEmail: {self.email}
            ProductsInfo: {self.products}
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
    resellers = relationship('Reseller', back_populates='manufacturer')

    def __repr__(self):
        return f"""
               ******************
               ManufacturingInfo:
               ******************
               {self.manufacturer_name}
               {self.address}
               {self.contact_name}
               {self.phone} 
               {self.email} 
               {self.city}
               {self.country}
               {self.zip_code}
               {self.resellers}
               """
