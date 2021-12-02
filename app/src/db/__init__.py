from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from app.config.settings import *

engine = create_engine(f"mysql+mysqlconnector://{USERNAME}:{PASSWORD}@{HOSTNAME}:{PORT}/{DATABASE}")


Base = declarative_base()
Session = sessionmaker()
Session.configure(bind=engine)
session = Session()
