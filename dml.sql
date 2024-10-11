INSERT INTO Productos (Nombre, Descripcion, Categoria, Precio, Stock, Disponibilidad, Fecha_Expiracion) VALUES
('Labial Rojo Pasión', 'Labial de larga duración color rojo intenso', 'Cosmeticos', 19.99, 100, TRUE, '2025-12-31'),
('Crema Hidratante Aloe', 'Crema hidratante con aloe vera para piel seca', 'Cuidado Piel', 24.99, 80, TRUE, '2026-06-30'),
('Perfume Floral Dreams', 'Fragancia floral con notas de jazmín y rosa', 'Perfumes', 59.99, 50, TRUE, '2027-03-31'),
('Cepillo para Cabello', 'Cepillo desenredante para todo tipo de cabello', 'Accesorios', 14.99, 120, TRUE, NULL),
('Base Matte 24h', 'Base de maquillaje de larga duración efecto mate', 'Cosmeticos', 29.99, 75, TRUE, '2025-09-30'),
('Serum Antiarrugas', 'Serum concentrado para reducir líneas de expresión', 'Cuidado Piel', 39.99, 60, TRUE, '2025-11-30'),
('Eau de Toilette Citrus', 'Fragancia cítrica refrescante unisex', 'Perfumes', 49.99, 40, TRUE, '2026-12-31'),
('Esponja de Maquillaje', 'Esponja suave para aplicación de base', 'Accesorios', 9.99, 200, TRUE, NULL),
('Máscara de Pestañas Volumen', 'Máscara para pestañas efecto volumen dramático', 'Cosmeticos', 22.99, 90, TRUE, '2025-08-31'),
('Protector Solar FPS 50', 'Protector solar de amplio espectro', 'Cuidado Piel', 27.99, 70, TRUE, '2026-05-31');

INSERT INTO Cosmeticos (Tipo_Cosmetico, Tono, Color, Cantidad) VALUES
('Labial', 'Intenso', 'Rojo', 50),
('Base', 'Medio', 'Beige', 24),
("Labial", "Suave", "Morado", 2),
('Otra', NULL, 'Negro', 40);

INSERT INTO Cuidado_Piel (Tipo_Piel, Componentes_Principales, Cantidad) VALUES
('Seca', 'Aloe Vera, Glicerina, Vitamina E', 10),
('Mixta', 'Retinol, Ácido Hialurónico, Péptidos', 5),
('Mixta', 'Óxido de Zinc, Avobenzona, Octinoxato', 16);

INSERT INTO Perfumes (Tipo_Aroma, Tamaño, Cantidad) VALUES
('Floral', 50.0, 10),
('Cítrico', 100.0, 7);

INSERT INTO Accesorios (Material, Tamaño, Color, Cantidad) VALUES
('Plástico', 20.0, 'Rosa', 5),
('Espuma', 5.0, 'Negro', 15);

INSERT INTO Clientes (Nombres, Apellidos, Correo, Telefono) VALUES
('María', 'González', 'maria.gonzalez@email.com', '555-0101'),
('Juan', 'Martínez', 'juan.martinez@email.com', '555-0102'),
('Ana', 'López', 'ana.lopez@email.com', '555-0103'),
('Carlos', 'Rodríguez', 'carlos.rodriguez@email.com', '555-0104'),
('Laura', 'Fernández', 'laura.fernandez@email.com', '555-0105'),
('Pedro', 'Sánchez', 'pedro.sanchez@email.com', '555-0106'),
('Sofia', 'Ramírez', 'sofia.ramirez@email.com', '555-0107'),
('Diego', 'Torres', 'diego.torres@email.com', '555-0108'),
('Valentina', 'Herrera', 'valentina.herrera@email.com', '555-0109'),
('Javier', 'Díaz', 'javier.diaz@email.com', '555-0110');

INSERT INTO Empleados (Nombres, Apellidos, Puesto_Trabajo, Fecha_Contratacion, Area_Trabajo) VALUES
('Luisa', 'Gómez', 'Vendedor', '2022-03-15', 'Venta'),
('Miguel', 'Vargas', 'Encargado de Bodega', '2021-07-01', 'Bodega'),
('Carmen', 'Morales', 'Gerente de Tienda', '2020-01-10', 'Administracion'),
('Roberto', 'Castro', 'Vendedor', '2023-02-28', 'Venta'),
('Elena', 'Ortiz', 'Maquillador Profesional', '2022-09-20', 'Venta'),
('Francisco', 'Jiménez', 'Asistente de Bodega', '2023-05-05', 'Bodega'),
('Isabel', 'Núñez', 'Asesor de Belleza', '2021-11-11', 'Venta'),
('Andrés', 'Medina', 'Cajero', '2022-06-30', 'Venta'),
('Patricia', 'Flores', 'Encargado de Compras', '2020-08-15', 'Administracion'),
('Raúl', 'Vega', 'Vendedor', '2023-01-20', 'Venta');

INSERT INTO Ventas (Fecha_Venta, Id_Cliente, Id_Empleado) VALUES
('2023-06-01', 1, 1),
('2023-06-02', 2, 4),
('2023-06-03', 3, 5),
('2023-06-04', 4, 7),
('2023-06-05', 5, 8),
('2023-06-06', 6, 1),
('2023-06-07', 7, 4),
('2023-06-08', 8, 5),
('2023-06-09', 9, 7),
('2023-06-10', 10, 8);

INSERT INTO Detalle_Ventas (Id_Venta, Id_Producto, Cantidad, Precio_Unitario) VALUES
(1, 1, 2, 19.99),
(1, 5, 1, 29.99),
(2, 2, 1, 24.99),
(3, 3, 1, 59.99),
(4, 4, 3, 14.99),
(5, 6, 1, 39.99),
(6, 7, 1, 49.99),
(7, 8, 2, 9.99),
(8, 9, 1, 22.99),
(9, 10, 2, 27.99);

INSERT INTO Proveedores (Nombre_Empresa, Nombre_Contacto, Telefono, Correo) VALUES
('CosmetiCorp', 'Ana García', '555-2001', 'ana.garcia@cosmeticorp.com'),
('NaturalBeauty', 'Luis Pérez', '555-2002', 'luis.perez@naturalbeauty.com'),
('FraganceWorld', 'María López', '555-2003', 'maria.lopez@fraganceworld.com'),
('BeautyTools', 'Carlos Ruiz', '555-2004', 'carlos.ruiz@beautytools.com'),
('SkinCarePro', 'Sofía Martínez', '555-2005', 'sofia.martinez@skincarepro.com'),
('MakeupMasters', 'Diego Fernández', '555-2006', 'diego.fernandez@makeupmasters.com'),
('AromaTech', 'Laura Sánchez', '555-2007', 'laura.sanchez@aromatech.com'),
('BeautyAccessories', 'Javier Torres', '555-2008', 'javier.torres@beautyaccessories.com'),
('OrganicBeauty', 'Isabel Ramírez', '555-2009', 'isabel.ramirez@organicbeauty.com'),
('LuxeCosmetics', 'Roberto Díaz', '555-2010', 'roberto.diaz@luxecosmetics.com');

INSERT INTO Ordenes_Compra (Fecha_Orden, Id_Proveedor) VALUES
('2023-05-01', 1),
('2023-05-05', 2),
('2023-05-10', 3),
('2023-05-15', 4),
('2023-05-20', 5),
('2023-05-25', 6),
('2023-05-30', 7),
('2023-06-04', 8),
('2023-06-09', 9),
('2023-06-14', 10);

INSERT INTO Detalle_Ordenes_Compra (Id_Orden, Id_Producto, Cantidad_Ordenada, Cantidad_Recibida) VALUES
(1, 1, 100, 100),
(2, 2, 80, 80),
(3, 3, 50, 50),
(4, 4, 120, 120),
(5, 5, 75, 75),
(6, 6, 60, 60),
(7, 7, 40, 40),
(8, 8, 200, 200),
(9, 9, 90, 90),
(10, 10, 70, 70);
