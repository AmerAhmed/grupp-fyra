import sqlalchemy
from sqlalchemy.orm import declarative_base, sessionmaker

engine = sqlalchemy.create_engine(
    f"mysql+mysqlconnector://root:Myservername@localhost:8080/manufacturing"
)

Base = declarative_base()
Session = sessionmaker()
Session.configure(bind=engine)
session = Session()
