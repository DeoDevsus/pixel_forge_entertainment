-- SQLBook: Code
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    fecha_registro DATE NOT NULL,
    pais VARCHAR(50) NOT NULL
);

CREATE TABLE desarrolladoras (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    sede VARCHAR(100) NOT NULL
);

CREATE TABLE plataformas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    fabricante VARCHAR(50) NOT NULL
);

CREATE TABLE juegos (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    fecha_lanzamiento DATE NOT NULL,
    id_desarrolladora INTEGER NOT NULL REFERENCES desarrolladoras(id)
);

CREATE TABLE ventas (
    id SERIAL PRIMARY KEY,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    id_cliente INTEGER NOT NULL REFERENCES clientes(id),
    total NUMERIC(10,2) NOT NULL
);

CREATE TABLE detalle_ventas (
    id SERIAL PRIMARY KEY,
    id_venta INTEGER NOT NULL REFERENCES ventas(id),
    id_juego INTEGER NOT NULL REFERENCES juegos(id),
    cantidad INTEGER NOT NULL,
    precio_unitario NUMERIC(10,2) NOT NULL
);

CREATE TABLE stock (
    id SERIAL PRIMARY KEY,
    id_juego INTEGER NOT NULL REFERENCES juegos(id),
    id_plataforma INTEGER NOT NULL REFERENCES plataformas(id),
    unidades INTEGER NOT NULL
);

CREATE TABLE usuarios_api (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    token TEXT NOT NULL
);