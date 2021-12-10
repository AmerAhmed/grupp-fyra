from mongoengine import StringField, Document


class Manufacturing(Document):
    name = StringField(max_length=100, required=True)


def mongo():
    pass


if __name__ == "__main__":
    mongo()
