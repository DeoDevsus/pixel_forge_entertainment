# Proyecto 1 – Reestructuración de DB para tienda PixelForge Entertainment

## 🎮 Descripción del negocio
PixelForge Entertainment es una tienda de videojuegos que maneja títulos físicos y digitales, consolas y accesorios. La empresa necesitaba una solución robusta para su manejo de clientes, ventas, plataformas y desarrolladoras.

## 🗃️ Estructura de la Base de Datos
La DB contiene 8 entidades: clientes, ventas, detalle_ventas, juegos, plataformas, desarrolladoras, stock, usuarios_api.

## 🧪 Backend
La API fue desarrollada en FastAPI. Se incluye un CRUD completo para la entidad `clientes`.

## 🚀 Cómo correr el proyecto
1. Clona el repositorio
2. Crea y activa el entorno virtual
3. Instala dependencias: `pip install -r requirements.txt`
4. Ejecuta la API: `uvicorn main:app --reload`
5. Prueba los endpoints en Postman:
   - `GET /clientes`
   - `POST /clientes`

## 📄 Justificaciones
- Se evitaron caracteres especiales en nombres de tablas
- Los campos están ligados lógicamente a su entidad
- No se incluyó `edad` u otros campos irrelevantes

## 📦 Exportación
El archivo `pixelforgeshop.sql` fue generado con `pg_dump`.
