<<<<<<< HEAD
from app.src.db import session
from app.src.models.models import Products, CustomerCars
from app.src.models.models import Customers, Orders, Resellers
from app.src.models.models import Employees, Manufacturer, Offices


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
    """
    offices = session.query(Offices).all()
    for office in offices:
        print(office)
    """

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
=======
from app.src.models.models import Customers, Cars
from app.src.models.models import Orders, Products
from app.src.models.models import Employees, Offices
from app.src.models.models import Manufacturers, Suppliers


def fetch_customers():
    for customers in Customers.objects:
        print(f"""
        FirstName: {customers.first_name} 
        LastName: {customers.last_name} 
        Email: {customers.email}
        Phone: {customers.phone} 
        Address: {customers.address} 
        PostalCode: {customers.postal_code}
        City: {customers.city} 
        Country: {customers.country}
        """)


def fetch_products():
    for product in Products.objects:
        print(f"""
            ProductName: {product.prod_name} 
            ProductNumber: {product.prod_number} 
            ProdVendor: {product.prod_vendor}  
            quantityInStock: {product.quantityin_stock} 
            BuyPrice: {product.buy_price}  
            Description {product.description}
            """)


def fetch_orders():
    for orders in Orders.objects:
        print(f"""
        QuantityOrdered: {orders.quantity_ordered} 
        OrderDate: {orders.order_date} 
        PriceEach: {orders.price_each}
        ShippedDate: {orders.shipped_date}
        """)


def fetch_cars():
    for cars in Cars.objects:
        print(f"""
        RegisterNumber: {cars.register_number} 
        Brand: {cars.brand} 
        Model: {cars.model}
        Color: {cars.color}
        Year: {cars.year}
        """)


def fetch_employees():
    for employee in Employees.objects:
        print(f"""
        Email: {employee.email} 
        FirstName: {employee.first_name} 
        LastName: {employee.last_name}
        Phone: {employee.phone}
        Address: {employee.address}
        City: {employee.city}
        PostalCode: {employee.postal_code}
        Country: {employee.country}""")


def fetch_offices():
    for office in Offices.objects:
        print(f"""
        OfficeName: {office.office_name} 
        Address: {office.address} 
        Phone: {office.phone}
        EmployeeFullname: {office.employee_fullname}
        EmployeePhone: {office.employee_phone}
        EmployeeEmail: {office.employee_email}
        """)


def fetch_suppliers():
    for supplier in Suppliers.objects:
        print(f"""
        SupplierEmail: {supplier.email} 
        Name: {supplier.name} 
        Phone: {supplier.phone}
        Address: {supplier.address}
        City: {supplier.city}
        PostalCode: {supplier.postal_code}
        Country: {supplier.country}
        """)


def fetch_manufacturers():
    for manufacturers in Manufacturers.objects:
        print(f"""
        ManufacturesEmail: {manufacturers.email} 
        Name: {manufacturers.name} 
        Phone: {manufacturers.phone}
        ContactPerson: {manufacturers.contact_fullname}
        Address: {manufacturers.address}
        City: {manufacturers.city}
        PostalCode: {manufacturers.postal_code}
        Country: {manufacturers.country}
        """)
>>>>>>> main
