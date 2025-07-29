from sqlalchemy import Column, Integer, String, Date
from database import Base

class Cliente(Base):
    __tablename__ = "clientes"
    
    id = Column(Integer, primary_key=True, index=True)
    nombre = Column(String, nullable=False)
    correo = Column(String, unique=True, nullable=False)
    fecha_registro = Column(Date, nullable=False)
    pais = Column(String, nullable=False)
