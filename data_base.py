from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from fastapi import FastAPI
from sqlalchemy import Boolean, Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship



SQLALCHEMY_DATABASE_URL = "postgresql://postgres:123@localhost/lenya_basa"

engine = create_engine(
   SQLALCHEMY_DATABASE_URL
)

DBSession = sessionmaker(autocommit=False, autoflush=False, bind=engine)


Base = declarative_base()

#Модель с категориями
class Categories(Base):
   __tablename__ = "categories"

   id = Column(Integer, primary_key=True, index=True)
   category = Column(String)

#Модель с фанфиками от ии
class fanbook(Base):
   __tablename__ = "fanbook"

   id = Column(Integer, primary_key=True, index=True)
   category_fanbook = Column(Integer)
   name = Column(String)
   information = Column(String)

  #созд таб
Base.metadata.create_all(bind=engine)

#создаем сессию подключения к бд
SessionLocal = sessionmaker(autoflush=False, bind=engine)
db = SessionLocal()

people = db.query(fanbook).filter(fanbook.id > 0).all()
for p in people:
   print(f"{p.id}{p.category_fanbook}{p.name}{p.information}")