CREATE DATABASE productos;
USE productos;
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50),
    nombre VARCHAR(100),
    precio INT,
    stock INT,
    vendidos INT
);

INSERT INTO productos (marca, nombre, precio, stock, vendidos)
VALUES ('jorgito', 'alfajores', 2304, 23, 2);


INSERT INTO productos (id, marca, nombre, precio, stock, vendidos)
VALUES (20, 'jorgito', 'alfajores', 2304, 23, 2);