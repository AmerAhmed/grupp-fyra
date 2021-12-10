# from app.controllers.controllers import get_ordered, get_resellers
# from app.controllers.controllers import get_manufacturing, get_customer_cars
# from app.controllers.controllers import get_offices
# from app.controllers.controllers import get_employees, get_customers
# from app.controllers.controllers import get_products
# from app.src.db import session
# from app.src.models.mysql import Customers


def main():
    print('*' * 40)
    # get_customers()
    """
    customers1 = session.query(Customers).filter(Customers.customers_id == 1).first()
    customers2 = session.query(Customers).filter(Customers.customers_id == 10).first()
    car = customers1.customers_has_car[0]
    customers1.customers_has_car.remove(car)
    customers2.customers_has_car.append(car)
    session.add(customers1)
    session.add(customers2)
    session.commit()
    get_customers()
    """

    """
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

    # get_customers()
    # get_customer_cars()

    # get_manufacturing()

    # get_products()

    # get_ordered()
    # get_resellers()


if __name__ == '__main__':
    main()
