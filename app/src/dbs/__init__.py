from app.config.settings import *
from mongoengine import connect
connect(f"{ONGODB_DATABASE} {ONGODB_USENAME} {ONGODB_PASSWORD}", authentication_source="companies")
