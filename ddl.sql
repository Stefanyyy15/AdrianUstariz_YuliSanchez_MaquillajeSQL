CREATE DATABASE IF NOT EXISTS sephora;
USE sephora;

CREATE TABLE IF NOT EXISTS Productos (
    Id_Producto INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT NOT NULL,
    Categoria ENUM('Cosmeticos', 'Cuidado Piel', 'Perfumes', 'Accesorios') NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL,
    Disponibilidad BOOLEAN NOT NULL,
    Fecha_Expiracion DATE
);

CREATE TABLE IF NOT EXISTS Cosmeticos (
    Id_Cosmetico INT PRIMARY KEY AUTO_INCREMENT,
    Tipo_Cosmetico ENUM('Labial', 'Base', 'Sombra', 'Otra') NOT NULL,
    Tono VARCHAR(50),
    Color VARCHAR(50),
    Cantidad INT NOT NULL,
    FOREIGN KEY (Id_Cosmetico) REFERENCES Productos(Id_Producto)
);

CREATE TABLE IF NOT EXISTS Cuidado_Piel (
    Id_CuidadoPiel INT PRIMARY KEY AUTO_INCREMENT,
    Tipo_Piel ENUM('Seca', 'Grasa', 'Mixta'),
    Componentes_Principales TEXT NOT NULL,
	Cantidad INT NOT NULL,
    FOREIGN KEY (Id_CuidadoPiel) REFERENCES Productos(Id_Producto)
);

CREATE TABLE IF NOT EXISTS Perfumes (
    Id_Perfume INT PRIMARY KEY AUTO_INCREMENT,
    Tipo_Aroma VARCHAR(50),
    Tamaño DECIMAL(10,2) NOT NULL,
    Cantidad INT NOT NULL,
    FOREIGN KEY (Id_Perfume) REFERENCES Productos(Id_Producto)
);

CREATE TABLE IF NOT EXISTS Accesorios (
    Id_Accesorio INT PRIMARY KEY AUTO_INCREMENT,
    Material VARCHAR(50) NOT NULL,
    Tamaño DECIMAL(10,2),
    Color VARCHAR(50),
    Cantidad INT NOT NULL,
    FOREIGN KEY (Id_Accesorio) REFERENCES Productos(Id_Producto)
);

CREATE TABLE IF NOT EXISTS Clientes (
    Id_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nombres VARCHAR(50) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL,
    Correo VARCHAR(100) NOT NULL UNIQUE,
    Telefono VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Empleados (
    Id_Empleado INT PRIMARY KEY AUTO_INCREMENT,
    Nombres VARCHAR(50) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL,
    Puesto_Trabajo VARCHAR(50) NOT NULL,
    Fecha_Contratacion DATE NOT NULL,
    Area_Trabajo ENUM('Venta', 'Bodega', 'Administracion')
);

CREATE TABLE IF NOT EXISTS Ventas (
    Id_Venta INT PRIMARY KEY AUTO_INCREMENT,
    Fecha_Venta DATE NOT NULL,
    Id_Cliente INT,
    Id_Empleado INT,
    FOREIGN KEY (Id_Cliente) REFERENCES Clientes(Id_Cliente),
    FOREIGN KEY (Id_Empleado) REFERENCES Empleados(Id_Empleado)
);

CREATE TABLE IF NOT EXISTS Detalle_Ventas (
    Id_Detalle INT PRIMARY KEY AUTO_INCREMENT,
    Id_Venta INT,
    Id_Producto INT,
    Cantidad INT NOT NULL,
    Precio_Unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (Id_Venta) REFERENCES Ventas(Id_Venta),
    FOREIGN KEY (Id_Producto) REFERENCES Productos(Id_Producto)
);

CREATE TABLE IF NOT EXISTS Proveedores (
    Id_Proveedor INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Empresa VARCHAR(100) NOT NULL,
    Nombre_Contacto VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    Correo VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Ordenes_Compra (
    Id_Orden INT PRIMARY KEY AUTO_INCREMENT,
    Fecha_Orden DATE NOT NULL,
    Id_Proveedor INT,
    FOREIGN KEY (Id_Proveedor) REFERENCES Proveedores(Id_Proveedor)
);

CREATE TABLE IF NOT EXISTS Detalle_Ordenes_Compra (
    Id_Detalle_Orden INT PRIMARY KEY AUTO_INCREMENT,
    Id_Orden INT,
    Id_Producto INT,
    Cantidad_Ordenada INT NOT NULL,
    Cantidad_Recibida INT NOT NULL,
    FOREIGN KEY (Id_Orden) REFERENCES Ordenes_Compra(Id_Orden),
    FOREIGN KEY (Id_Producto) REFERENCES Productos(Id_Producto)
);
