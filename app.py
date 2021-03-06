"""
The main entry point Object-Document Mapping in MongoDB!
Amer Ahmed
Alexander Amaechi
Elvir Velagic
Abshir Mohamed
Supervisor: Joakim Wassberg
Version 0.0.1
"""

from app.controllers.controller import fetch_customers, fetch_products
from app.controllers.controller import fetch_orders, fetch_cars
from app.controllers.controller import fetch_offices, fetch_suppliers
from app.controllers.controller import fetch_employees, fetch_manufacturers

from mongoengine import connect
connect(db='companies', username='company', password='myservices', authentication_source='companies')


def app():
    print('*' * 45)
    print('Welcome to Object-Document Mapping in MongoDB!')
    print('*' * 45)

    # fetch_cars()
    # fetch_orders()
    # fetch_products()
    # fetch_offices()
    # fetch_customers()
    # fetch_employees()
    # fetch_suppliers()
    # fetch_manufacturers()

    print('*' * 45)


if __name__ == '__main__':
    app()
