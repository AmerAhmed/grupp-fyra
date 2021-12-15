from mongoengine import connect
from app.controllers.controllers import fetch_customers, fetch_products
from app.controllers.controllers import fetch_orders, fetch_cars
from app.controllers.controllers import fetch_offices, fetch_suppliers
from app.controllers.controllers import fetch_employees, fetch_manufacturers

connect(db='companies', username='company', password='myservices', authentication_source='companies')


def main():
    print('*' * 45)
    print('Welcome to Object-Document Mapping in MongoDB!')
    print('*' * 45)

<<<<<<< HEAD
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
    # get_offices()
    # get_employees()
    # get_customer_cars()
    # get_manufacturing()
    # get_products()
    # get_orders()
    # get_resellers()
    # get_orders()

=======
    # fetch_customers()

    # fetch_products()

    # fetch_orders()

    # fetch_cars()

    # fetch_employees()

    # fetch_offices()

    # fetch_suppliers()

    fetch_manufacturers()
>>>>>>> main
    print('*' * 45)


if __name__ == '__main__':
    main()
