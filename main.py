"""
The main entry point for Relational Database in MySQL!
Amer Ahmed
Alexander Amaechi
Abshir Mohamed
Elvir Velagic
Supervisor: Joakim Wassberg
Version 0.0.1
"""

from app.controllers.controllers import get_orders, get_resellers
from app.controllers.controllers import get_manufacturing
from app.controllers.controllers import get_offices, get_cars
from app.controllers.controllers import get_employees, get_customers
from app.controllers.controllers import get_products
from app.src.models.models_s import Customers
from app.src.db import session


def main():
    print('*' * 40)
    print('Welcome to Relational Database in MySQL!')
    print('*' * 40)
    # get_customers()
    """
    customers1 = session.query(Customers).filter(Customers.customers_id == 1).first()
    customers2 = session.query(Customers).filter(Customers.customers_id == 2).first()

    car = customers1.customers_has_car[0]
    customers1.customers_has_car.remove(car)  # Removed car from id 1
    customers2.customers_has_car.append(car)  # Added car to id 2

    session.add(customers1)
    session.add(customers2)
    session.commit()

    # get_customers()

    # Create a new person
    customer = Customers(first_name='Amer', last_name='Ahmed',
                         address='Flintgatan 1 b 331 30', phone='0702839903',
                         email='amer@gmail.com', city='Värnamo',
                         zip_code='SE 11115', country='Sweden', employees_employee_id=50)
    session.add(customer)
    session.commit()
    get_customers()
    """
    # get_customers()
    # get_offices()
    # get_employees()
    #  get_cars()
    # get_manufacturing()
    # get_products()
    # get_orders()
    # get_resellers()
    # get_orders()


if __name__ == '__main__':
    main()
