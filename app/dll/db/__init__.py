from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base

engine = create_engine("mysql+mysqlconnector://root:Myservername@localhost:3306/manufacturing")


Base = declarative_base()
Session = sessionmaker()
Session.configure(bind=engine)
session = Session()
