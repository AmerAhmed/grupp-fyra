from mongoengine import StringField, IntField, Document


class Customers(Document):
    name = StringField(required=True)
    age = IntField()
    email = StringField(max_length=25)
    city = StringField(required=True)
    country = StringField(max_length=25)

    def ___init__(self, name, age, email, city, country, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.name = name
        self.age = age
        self.email = email
        self.city = city
        self.country = country

    meta = {
        'collection': 'users'
    }


def mongo_models():
    for customer in Customers.objects:
        print(customer.name, customer.email)


if __name__ == '__main__':
    mongo_models()


