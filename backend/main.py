from fastapi import FastAPI
from crud import clientes
from pydantic import BaseModel
from typing import List
from datetime import date

app = FastAPI()

class ClienteInput(BaseModel):
    nombre: str
    correo: str
    fecha_registro: date
    pais: str

@app.get("/clientes", response_model=List[ClienteInput])
def listar_clientes():
    return clientes.get_clientes()

@app.post("/clientes")
def crear_cliente(cliente: ClienteInput):
    return clientes.crear_cliente(cliente)
