
for customer in Customers.objects.order_by('-first_name', '-last_name'):
       print(f'FirstName: {customer.first_name}\t\nLastName: {customer.last_name}')
# UPDATED
Customers.objects(first_name='John').update(last_name='Andersson')
    
# DELETE
Customers.objects(name='Amer').delete()

# GET USER EMAIL
cust = Customers.objects.get(first_name='Amer')
     print(cust.email)

# ONLY FIRST USER
customers = Customers.objects.only('first_name').first()
 print('Username:', customers.first_name)

for cust in Customers.objects.only('last_name'):
        print(cust.to_json())
        
for cust in Customers.objects.fields(last_name=0):
        print(cust.to_json())


# INSERT ONE 
customer = Customers(username='John',
                     surname='Smith',
                     email='john@gmail.com',
                     phone='555-555-1234',
                     address='Washington Square',
                     city='New York',
                     postal_code='NY 10012',
                     country='USA'
                     )
customer.save()


# INSERT MANY
Customers.objects.insert(
[Customers(first_name='Anders', last_name='Larsson',
            email='anders@gmail.com',
            phone='070-559-1204',
            address='Washington S',
            city='New York D',
            postal_code='DC 19797',
            country='USA'),
 
Customers(first_name='Emma', last_name='Erikesson',
            email='ali@gmail.com',
            phone='070-570-1804',
            address='Washington B',
            city='New York C',
            postal_code='DC 10057',
            country='Sudan')])



