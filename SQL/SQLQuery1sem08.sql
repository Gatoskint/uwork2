use master
create database ejer01
use ejer01


create table Empleados (
    Cod_Empleado varchar(5) primary key,
    Nombre varchar(max),
    Apellido varchar(max)
)

create table Profesiones (
    Cod_Profesion varchar(5) primary key,
    Profesion varchar(50)
)


create table Empleado_Profesion (
    Cod_Empleado varchar(5),
    Cod_Profesion varchar(5),
    foreign key (Cod_Empleado) references Empleados(Cod_Empleado),
    foreign key (Cod_Profesion) references Profesiones(Cod_Profesion),
    primary key (Cod_Empleado, Cod_Profesion))


insert into Empleados(Cod_Empleado, Nombre, Apellido) values
('E001', 'Julian', 'Medina'),
('E002', 'Jose', 'Melo'),
('E003', 'Carlos', 'Tapia')


insert into Profesiones(Cod_Profesion, Profesion) values
('P01', 'Mecanico'),
('P02', 'Jardinero'),
('P03', 'Pintor'),
('P04', 'Albañil'),
('P05', 'Costurero'),
('P06', 'Docente'),
('P07', 'Conductor')

insert into Empleado_Profesion(Cod_Empleado, Cod_Profesion)values
('E001', 'P01'),
('E001', 'P02'),
('E001', 'P03'),
('E002', 'P03'),
('E002', 'P04'),
('E002', 'P05'),
('E003', 'P06'),
('E003', 'P07')

select
    e.Cod_Empleado,
    e.Nombre,
    e.Apellido,
    ep.Cod_Profesion,
    p.Profesion
from Empleados e
	join Empleado_Profesion ep ON e.Cod_Empleado = ep.Cod_Empleado
		join Profesiones p ON ep.Cod_Profesion = p.Cod_Profesion;
