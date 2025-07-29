from models import Cliente
from database import SessionLocal
from fastapi import HTTPException

def get_clientes():
    db = SessionLocal()
    return db.query(Cliente).all()

def crear_cliente(data):
    db = SessionLocal()
    nuevo = Cliente(**data.dict())
    db.add(nuevo)
    db.commit()
    db.refresh(nuevo)
    return nuevo
