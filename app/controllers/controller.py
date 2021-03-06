"""
The main entry point for Object-Document Mapping in MongoDB!
Amer Ahmed
Alexander Amaechi
Abshir Mohamed
Elvir Velagic
Supervisor: Joakim Wassberg
Version 0.0.1
"""

from app.src.models.model import Customers, Cars
from app.src.models.model import Orders, Products
from app.src.models.model import Employees, Offices
from app.src.models.model import Manufacturers, Suppliers


def fetch_customers():
    for customers in Customers.objects:
        print('*' * 40)
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
        print('*' * 40)
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
        print('*' * 40)
        print(f"""
        QuantityOrdered: {orders.quantity_ordered} 
        OrderDate: {orders.order_date} 
        PriceEach: {orders.price_each}
        ShippedDate: {orders.shipped_date}
        """)


def fetch_cars():
    for cars in Cars.objects:
        print('*' * 40)
        print(f"""
         RegisterNumber: {cars.register_number}
         Brand: {cars.brand}
         Model: {cars.model}
         Color: {cars.color}
         Year: {cars.year}
         """)


def fetch_employees():
    for employee in Employees.objects:
        print('*' * 40)
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
        print('*' * 40)
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
        print('*' * 40)
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
        print('*' * 40)
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
