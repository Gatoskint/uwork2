CREATE DATABASE BodegaRosita;
USE BodegaRosita;

CREATE USER 'jamil'@'localhost' IDENTIFIED BY 'admin123';
GRANT SELECT, INSERT, UPDATE, DELETE ON BodegaRosita.* TO 'jamil'@'localhost';
FLUSH PRIVILEGES;

-- Creación de la tabla Productos
CREATE TABLE Productos (
    producto_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    cantidad INT,
    fecha_ingreso DATE
);

-- Creación de la tabla MovimientosInventario
CREATE TABLE MovimientosInventario (
    movimiento_id INT PRIMARY KEY AUTO_INCREMENT,
    producto_id INT,
    cantidad INT,
    tipo_movimiento CHAR(7), /* entrada o salida */
    fecha DATE,
    FOREIGN KEY (producto_id) REFERENCES Productos(producto_id)
);

-- Creación de la tabla CambiosPrecio
CREATE TABLE CambiosPrecio (
    cambio_id INT PRIMARY KEY AUTO_INCREMENT,
    producto_id INT,
    precio_anterior DECIMAL(10, 2),
    precio_nuevo DECIMAL(10, 2),
    fecha_cambio DATE,
    FOREIGN KEY (producto_id) REFERENCES Productos(producto_id)
);

-- Creación de la tabla Ventas
CREATE TABLE Ventas (
    venta_id INT PRIMARY KEY AUTO_INCREMENT,
    producto_id INT,
    cantidad INT,
    total DECIMAL(10, 2),
    fecha DATE,
    FOREIGN KEY (producto_id) REFERENCES Productos(producto_id)
);

-- Creación de la tabla Personal
CREATE TABLE Personal (
    personal_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    puesto VARCHAR(100),
    fecha_contratacion DATE
);
CREATE TABLE Usuario (
    idUsuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    usuario VARCHAR(50) UNIQUE,
    password VARCHAR(255),
    telefono VARCHAR(15),
    estado INT
);
INSERT INTO Usuario (nombre, apellido, usuario, password, telefono, estado) 
VALUES ('Jamil', 'Baca', 'jamil', 'admin', '970536959', 1);
SELECT * FROM Usuario
-- Ejecución de ejemplos de alteración
-- Estos son solo ejemplos, puedes modificarlos según tus necesidades específicas
ALTER TABLE Ventas ADD COLUMN comentario VARCHAR(255);
ALTER TABLE MovimientosInventario ADD COLUMN comentario VARCHAR(255);
ALTER TABLE CambiosPrecio ADD COLUMN comentario VARCHAR(255);

-- Consultas para ver el contenido de las tablas
SELECT * FROM Productos;
SELECT * FROM MovimientosInventario;
SELECT * FROM CambiosPrecio;
SELECT * FROM Ventas;
SELECT * FROM Personal;
