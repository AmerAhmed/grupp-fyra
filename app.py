from mongoengine import connect
from app.controllers.controller import fetch_customers, fetch_products
from app.controllers.controller import fetch_orders, fetch_cars
from app.controllers.controller import fetch_offices, fetch_suppliers
from app.controllers.controller import fetch_employees, fetch_manufacturers

connect(db='companies', username='company', password='myservices', authentication_source='companies')


def app():
    print('*' * 45)
    print('Welcome to Object-Document Mapping in MongoDB!')
    print('*' * 45)


"""
    fetch_customers()

    fetch_products()

    fetch_orders()

    fetch_cars()

    fetch_employees()

    fetch_offices()

    fetch_suppliers()

    fetch_manufacturers()
    print('*' * 45)
"""

if __name__ == '__main__':
    app()
