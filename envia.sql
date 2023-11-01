CREATE DATABASE envia;

CREATE TABLE Clientes(
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) ,
    direccion VARCHAR(100),
    correo VARCHAR(50),
    telefono VARCHAR(10)
)

CREATE TABLE Paquetes(
    paquete_id INT AUTO_INCREMENT PRIMARY KEY,
    peso DECIMAL(5,2),
    tamaño VARCHAR(20),
    direccion_origen VARCHAR(100), 
    direccion_destino VARCHAR(100),
    estado VARCHAR(20),
    clientes_id INT,
    FORING KEY (cliente_id) REFERENCES Clientes(clientes_id)
)

CREATE TABLE Empleados(
    empleado_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
    apellido VARCHAR(50)
    cargo VARCHAR(50)
    salario DECIMAL(10,2)
)

CREATE TABLE Envios(
    envio_id INT AUTO_INCREMENT PRIMARY KEY
    fecha_envio DATE,
    fecha_entrega DATE
    estado_envio VARCHAR(20)
    paquete_id INT,
    empleado_id INT, 
    FORING KEY (paquete_id) REFERENCES Paquetes(paquete_id)
    FORING KEY (empleado_id) REFERENCES Empleado(empleado_id)
)