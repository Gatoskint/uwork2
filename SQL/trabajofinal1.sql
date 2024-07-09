create database BodegaRosita
use BodegaRosita

-- creación de usuarios y permisos
create login gabriel with password = 'admin123'
create user gabriel for login gabriel
alter role db_owner add member gabriel

create login jamil with password = 'admin123'
create user jamil for login jamil
grant select, insert, update, delete on database::BodegaRosita to jamil

create login jonathan with password = 'admin123'
create user jonathan for login jonathan
grant select, insert on database::BodegaRosita to jonathan

create login diego with password = 'admin123'
create user diego for login diego
grant select, update on database::BodegaRosita to diego

create login jhefferson with password = 'admin123'
create user jhefferson for login jhefferson
grant select on database::BodegaRosita to jhefferson
go

-- creación de tablas
create table Productos (
    producto_id int identity primary key,
    nombre varchar(100),
    descripcion text,
    precio decimal(10, 2),
    cantidad int,
    fecha_ingreso date
)
go

create table MovimientosInventario (
    movimiento_id int identity primary key,
    producto_id int,
    cantidad int,
    tipo_movimiento char(7), /*entrada o salida*/
    fecha date,
    foreign key (producto_id) references Productos(producto_id)
)
go

create table CambiosPrecio (
    cambio_id int identity primary key,
    producto_id int,
    precio_anterior decimal(10, 2),
    precio_nuevo decimal(10, 2),
    fecha_cambio date,
    foreign key (producto_id) references Productos(producto_id)
)
go

create table Ventas (
    venta_id int identity primary key,
    producto_id int,
    cantidad int,
    total decimal(10, 2),
    fecha date,
    foreign key (producto_id) references Productos(producto_id)
)
go

create table Personal (
    personal_id int identity primary key,
    nombre varchar(100),
    puesto varchar(100),
    fecha_contratacion date
)
go

-- INSERTS --
insert into Productos (nombre, descripcion, precio, cantidad, fecha_ingreso) values
('Leche', 'Tarro de leche descremada, 1 litro', 3.50, 100, '2024-06-01'),
('Pan', 'Pan blanco fresco, 500g', 2.00, 200, '2024-06-01'),
('Huevos', 'Docena de huevos, tamaño grande', 5.50, 150, '2024-06-02'),
('Arroz', 'Arroz blanco, 1kg', 1.80, 300, '2024-06-02'),
('Frijoles', 'Frijoles negros, 500g', 2.50, 100, '2024-06-03'),
('Aceite', 'Botella de aceite vegetal, 1 litro', 4.00, 80, '2024-06-03'),
('Azúcar', 'Azúcar blanca refinada, 1kg', 2.20, 120, '2024-06-04'),
('Café', 'Café molido tostado, 250g', 6.50, 90, '2024-06-04'),
('Jabón', 'Jabón en barra, aroma a lavanda', 1.50, 200, '2024-06-05'),
('Shampoo', 'Shampoo fortificante, 400ml', 3.80, 150, '2024-06-05'),
('Acondicionador', 'Acondicionador suavizante, 350ml', 3.50, 120, '2024-06-06'),
('Papel Higiénico', 'Rollo de papel higiénico suave, 4 unidades', 2.75, 180, '2024-06-06'),
('Cepillo de Dientes', 'Cepillo de dientes medio, unidad', 1.20, 250, '2024-06-07'),
('Pasta Dental', 'Pasta dental anti-caries, 100g', 2.30, 200, '2024-06-07'),
('Galletas', 'Galletas integrales, paquete de 250g', 1.80, 300, '2024-06-08'),
('Chocolate', 'Tableta de chocolate amargo, 100g', 3.00, 150, '2024-06-08'),
('Refresco', 'Botella de refresco de cola, 2 litros', 1.99, 100, '2024-06-09'),
('Agua Mineral', 'Botella de agua mineral, 500ml', 0.80, 400, '2024-06-09'),
('Vino Tinto', 'Botella de vino tinto reserva, 750ml', 12.50, 50, '2024-06-10'),
('Cerveza', 'Six-pack de cerveza lager, 355ml por lata', 8.00, 80, '2024-06-10'),
('Pasta', 'Pasta corta italiana, 500g', 1.50, 200, '2024-06-11'),
('Salsa de Tomate', 'Frasco de salsa de tomate, 400g', 1.70, 150, '2024-06-11'),
('Harina', 'Harina de trigo todo uso, 1kg', 2.00, 180, '2024-06-12'),
('Lechuga', 'Lechuga romana fresca, unidad', 1.20, 250, '2024-06-12'),
('Tomate', 'Tomate rojo maduro, unidad', 0.75, 300, '2024-06-13'),
('Cebolla', 'Cebolla blanca grande, unidad', 0.50, 400, '2024-06-13'),
('Zanahoria', 'Zanahoria fresca, unidad', 0.60, 350, '2024-06-14'),
('Manzana', 'Manzana roja, unidad', 0.90, 300, '2024-06-14'),
('Plátano', 'Plátano macho verde, unidad', 0.70, 200, '2024-06-15'),
('Naranja', 'Naranja valencia, unidad', 0.80, 250, '2024-06-15'),
('Mango', 'Mango maduro, unidad', 1.25, 150, '2024-06-16'),
('Pera', 'Pera conferencia, unidad', 1.00, 180, '2024-06-16'),
('Sandía', 'Sandía sin semillas, unidad', 4.50, 50, '2024-06-17'),
('Melón', 'Melón dulce, unidad', 3.50, 80, '2024-06-17'),
('Piña', 'Piña dorada, unidad', 2.50, 100, '2024-06-18'),
('Fresas', 'Fresas frescas, bandeja de 250g', 3.20, 120, '2024-06-18'),
('Kiwi', 'Kiwi verde fresco, unidad', 1.80, 150, '2024-06-19'),
('Uvas', 'Uvas sin semillas, bandeja de 500g', 4.00, 100, '2024-06-19'),
('Almendras', 'Almendras tostadas, 200g', 5.50, 90, '2024-06-20'),
('Nueces', 'Nueces crudas, 250g', 4.80, 80, '2024-06-20'),
('Pistachos', 'Pistachos salados, 150g', 6.00, 70, '2024-06-21'),
('Aceitunas', 'Aceitunas verdes marinadas, 250g', 3.50, 120, '2024-06-21'),
('Queso', 'Queso cheddar en lonchas, 200g', 3.75, 100, '2024-06-22'),
('Jamón', 'Jamón de pavo en lonchas, 150g', 2.99, 120, '2024-06-22'),
('Salami', 'Salami italiano, 250g', 4.50, 80, '2024-06-23'),
('Filete de Pollo', 'Filete de pechuga de pollo, 500g', 7.50, 60, '2024-06-23'),
('Carne Molida', 'Carne molida de res magra, 1kg', 9.00, 40, '2024-06-24'),
('Chorizo', 'Chorizo fresco picante, 300g', 3.25, 100, '2024-06-24'),
('Salchichas', 'Salchichas de cerdo, paquete de 6', 4.20, 120, '2024-06-25')

insert into MovimientosInventario (producto_id, cantidad, tipo_movimiento, fecha) values
(1, 20, 'Compra inicial de leche', '2024-06-01'),
(2, 15, 'Reabastecimiento de pan', '2024-06-01'),
(3, 10, 'Venta de huevos', '2024-06-02'),
(4, 25, 'Compra de arroz', '2024-06-02'),
(5, 30, 'Reabastecimiento de frijoles', '2024-06-03'),
(6, 20, 'Compra de aceite', '2024-06-03'),
(7, 15, 'Venta de azúcar', '2024-06-04'),
(8, 10, 'Venta de café', '2024-06-04'),
(9, 25, 'Compra de jabón', '2024-06-05'),
(10, 20, 'Compra de shampoo', '2024-06-05'),
(11, 15, 'Venta de acondicionador', '2024-06-06'),
(12, 10, 'Venta de papel higiénico', '2024-06-06'),
(13, 20, 'Compra de cepillos de dientes', '2024-06-07'),
(14, 15, 'Compra de pasta dental', '2024-06-07'),
(15, 30, 'Reabastecimiento de galletas', '2024-06-08'),
(16, 25, 'Venta de chocolate', '2024-06-08'),
(17, 20, 'Compra de refrescos', '2024-06-09'),
(18, 15, 'Compra de agua mineral', '2024-06-09'),
(19, 10, 'Venta de vino tinto', '2024-06-10'),
(20, 5, 'Venta de cerveza', '2024-06-10'),
(21, 15, 'Compra de pasta', '2024-06-11'),
(22, 10, 'Compra de salsa de tomate', '2024-06-11'),
(23, 20, 'Reabastecimiento de harina', '2024-06-12'),
(24, 15, 'Venta de lechuga', '2024-06-12'),
(25, 30, 'Compra de tomate', '2024-06-13'),
(26, 25, 'Compra de cebolla', '2024-06-13'),
(27, 20, 'Reabastecimiento de zanahorias', '2024-06-14'),
(28, 15, 'Compra de manzanas', '2024-06-14'),
(29, 10, 'Venta de plátanos', '2024-06-15'),
(30, 5, 'Venta de naranjas', '2024-06-15'),
(31, 15, 'Compra de mangos', '2024-06-16'),
(32, 10, 'Compra de peras', '2024-06-16'),
(33, 20, 'Reabastecimiento de sandías', '2024-06-17'),
(34, 15, 'Venta de melones', '2024-06-17'),
(35, 30, 'Compra de piñas', '2024-06-18'),
(36, 25, 'Compra de fresas', '2024-06-18'),
(37, 20, 'Reabastecimiento de kiwis', '2024-06-19'),
(38, 15, 'Compra de uvas', '2024-06-19'),
(39, 10, 'Venta de almendras', '2024-06-20'),
(40, 5, 'Venta de nueces', '2024-06-20'),
(41, 15, 'Compra de pistachos', '2024-06-21'),
(42, 10, 'Compra de aceitunas', '2024-06-21'),
(43, 20, 'Reabastecimiento de queso', '2024-06-22'),
(44, 15, 'Venta de jamón', '2024-06-22'),
(45, 30, 'Compra de filetes de pollo', '2024-06-23'),
(46, 25, 'Compra de carne molida', '2024-06-23'),
(47, 20, 'Reabastecimiento de chorizos', '2024-06-24'),
(48, 15, 'Venta de salchichas', '2024-06-24'),
(49, 10, 'Compra de pan', '2024-06-25'),
(50, 5, 'Compra de vino tinto', '2024-06-25')

insert into CambiosPrecio (producto_id, precio_anterior, precio_nuevo, fecha_cambio) values
(1, 3.50, 4.00, '2024-06-05'),
(2, 2.00, 2.50, '2024-06-06'),
(3, 5.50, 6.00, '2024-06-07'),
(4, 1.80, 2.00, '2024-06-08'),
(5, 2.50, 3.00, '2024-06-09'),
(6, 4.00, 4.50, '2024-06-10'),
(7, 2.20, 2.75, '2024-06-11'),
(8, 6.50, 7.00, '2024-06-12'),
(9, 1.50, 1.80, '2024-06-13'),
(10, 3.80, 4.00, '2024-06-14'),
(11, 3.50, 3.75, '2024-06-15'),
(12, 2.75, 3.00, '2024-06-16'),
(13, 1.20, 1.50, '2024-06-17'),
(14, 2.30, 2.50, '2024-06-18'),
(15, 1.80, 2.00, '2024-06-19'),
(16, 3.00, 3.20, '2024-06-20'),
(17, 1.99, 2.20, '2024-06-21'),
(18, 0.80, 1.00, '2024-06-22'),
(19, 12.50, 13.00, '2024-06-23'),
(20, 8.00, 8.50, '2024-06-24'),
(21, 1.50, 1.70, '2024-06-25')

insert into Ventas (producto_id, cantidad, total, fecha) values
(1, 10, 40.00, '2024-06-02'),
(2, 20, 50.00, '2024-06-03'),
(3, 15, 90.00, '2024-06-04'),
(4, 25, 45.00, '2024-06-05'),
(5, 30, 75.00, '2024-06-06'),
(6, 20, 90.00, '2024-06-07'),
(7, 15, 41.25, '2024-06-08'),
(8, 10, 70.00, '2024-06-09'),
(9, 25, 45.00, '2024-06-10'),
(10, 20, 36.00, '2024-06-11'),
(11, 15, 52.50, '2024-06-12'),
(12, 10, 30.00, '2024-06-13'),
(13, 20, 60.00, '2024-06-14'),
(14, 15, 37.50, '2024-06-15'),
(15, 30, 60.00, '2024-06-16'),
(16, 25, 75.00, '2024-06-17'),
(17, 20, 39.80, '2024-06-18'),
(18, 15, 45.00, '2024-06-19'),
(19, 10, 26.40, '2024-06-20'),
(20, 5, 42.50, '2024-06-21'),
(21, 15, 25.50, '2024-06-22'),
(22, 10, 34.00, '2024-06-23'),
(23, 20, 60.00, '2024-06-24'),
(24, 15, 45.00, '2024-06-25')

insert into Personal (nombre, puesto, fecha_contratacion) values
('Ana López', 'Cajero', '2024-05-20'),
('Javier Fernandez', 'Almacenista', '2024-05-25'),
('María Torres', 'Gerente', '2024-06-01'),
('Luis Gómez', 'Reponedor', '2024-06-05'),
('Andrea Vargas', 'Cajero', '2024-06-10'),
('Carlos Nuñez', 'Almacenista', '2024-06-15'),
('Elena Jiménez', 'Gerente', '2024-06-20'),
('Martín Ruiz', 'Reponedor', '2024-06-25')
go
/*INVENTARIO*/

create view VistaMovimientosInventario as
select
    mi.movimiento_id,
    p.nombre as producto,
    p.descripcion as descripcion_producto,
    mi.cantidad,
    mi.tipo_movimiento,
    mi.fecha
from
    MovimientosInventario mi
join
    Productos p on mi.producto_id = p.producto_id
go

-- cambiosprecio
create view VistaCambiosPrecio as
select
    cp.cambio_id,
    p.nombre as producto,
    p.descripcion as descripcion_producto,
    cp.precio_anterior,
    cp.precio_nuevo,
    cp.fecha_cambio
from
    CambiosPrecio cp
join
    Productos p on cp.producto_id = p.producto_id
go

-- resumen de ventas
create view VistaVentas as
select
    v.venta_id,
    p.nombre as producto,
    p.descripcion as descripcion_producto,
    v.cantidad,
    v.total,
    v.fecha
from
    Ventas v
join
    Productos p on v.producto_id = p.producto_id
go

-- personal
create view VistaPersonal as
select
    personal_id,
    nombre,
    puesto,
    fecha_contratacion
from
    Personal
go

-- actualinventario
create view VistaInventario as
select
    p.producto_id,
    p.nombre as producto,
    p.descripcion as descripcion_producto,
    sum(case when mi.tipo_movimiento = 'entrada' then mi.cantidad else 0 end) as total_entradas,
    sum(case when mi.tipo_movimiento = 'salida' then mi.cantidad else 0 end) as total_salidas,
    sum(case when mi.tipo_movimiento = 'entrada' then mi.cantidad
             when mi.tipo_movimiento = 'salida' then -mi.cantidad else 0 end) as inventario_actual
from
    Productos p
left join
    MovimientosInventario mi on p.producto_id = mi.producto_id
group by
    p.producto_id, p.nombre, p.descripcion;
go

-- ejemplos
create procedure InsertarProducto
    @nombre nvarchar(100),
    @descripcion nvarchar(255)
as
begin
    insert into Productos (nombre, descripcion)
    values (@nombre, @descripcion)
end;
go

create procedure ActualizarPrecioProducto
    @producto_id int,
    @nuevo_precio decimal(10, 2)
as
begin
    update Productos
    set precio = @nuevo_precio
    where producto_id = @producto_id;
end;
go

create procedure EliminarVenta
    @venta_id int
as
begin
    delete from Ventas
    where venta_id = @venta_id;
end
--sadasnmidxkqwiojxumj213eus8u18su128ui1i9sakkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkw