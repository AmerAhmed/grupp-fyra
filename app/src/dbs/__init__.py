from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from app.config.settings import USERNAME, PASSWORD, HOSTNAME, PORT, DATABASES

engine = create_engine(f"mysql+mysqlconnector://{USERNAME}:{PASSWORD}@{HOSTNAME}:{PORT}/{DATABASES}")


Base = declarative_base()
Session = sessionmaker()
Session.configure(bind=engine)
session = Session()
