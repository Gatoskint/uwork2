use master
create database veterinaria
use veterinaria

-- Tabla de due�os de mascotas
CREATE TABLE Due�os (
    due�oId INT PRIMARY KEY,
    dueNombre VARCHAR(max)not null,
    dueApellidos VARCHAR(max)not null,
    dueDNI VARCHAR(max) not null,
    dueSexo int null,
    dueFechaNacimiento DATE null,
    dueCelular VARCHAR(9) not null,
    dueEmail VARCHAR(max) null,
    dueDirecci�n VARCHAR(max) not null,
dueEst int not null
)

-- Tabla de mascotas
CREATE TABLE Mascotas (
    mascotaId INT PRIMARY KEY not null,
    mascNombre VARCHAR(max) not null,
    mascRaza VARCHAR(max)not null,
    mascTipo VARCHAR(max)not null,
    mascEdad int null,
    mascColor VARCHAR(max) not null,
    mascPesoActual float not null,
mascEst int not null,
due�oId INT not null,
    FOREIGN KEY (due�oId) REFERENCES Due�os(due�oId)
)


-- Tabla de precios de los diferentes tipos de servicio
CREATE TABLE Precios (
    precId int not null,
precTipoServicio varchar(max) not null,
    precio float not null,
precEst int not null
)

-- Tabla de colaboradores de la veterinaria
CREATE TABLE Colaboradores (
    colabId INT PRIMARY KEY,
    colabNombre VARCHAR(max) not null,
    colabApellidos VARCHAR(max) not null,
    colabDNI varchar(max) not null,
    colabSexo int null,
    colabFechaNacimiento DATE null,
    colabCelular VARCHAR(9) not null,
    colabEmail VARCHAR(max) null,
    colabDirecci�n VARCHAR(max) null,
colabEst int not null
)

-- Tabla de servicios de ba�o
CREATE TABLE ServiciosBa�o (
    servicioId INT PRIMARY KEY not null,
colabId int not null, 
    mascotaId INT not null,
    ServBFechaServicio DATE not null,
    ServBHoraServicio TIME not null,
    ServBFechaRecojo date not null,
    ServBHoraRecojo time not null,
    ServBPrecio float not null,
    ServBTipoServicio VARCHAR(max) not null,
    ServBColaboradorID INT not null,
servBEstado int not null,
    constraint fk_tatata FOREIGN KEY (mascotaId) REFERENCES Mascotas(mascotaId),
constraint fk_sdadsad foreign key (colabId) references Colaboradores(colabId)
)

--due�os
insert into Due�os(due�oId, dueNombre, dueApellidos, dueDNI, dueSexo, dueFechaNacimiento, dueCelular, dueEmail, dueDirecci�n, dueEst) 
values
(1, 'Mar�a', 'L�pez', 78901234, 1, '1990-04-18', 987654322, 'maria@gmail.com', 'San Miguel', 1),
(2, 'Juan', 'P�rez', 12345678, 0, '1985-09-15', 987654323, 'juan@hotmail.com', 'Surquillo', 1),
(3, 'Ana', 'Garc�a', 56789012, 0, '1983-06-11', 987654324, 'ana@yahoo.com', 'Miraflores', 1),
(4, 'Luis', 'Mart�nez', 90123456, 1, '1995-01-18', 987654325, 'luis@gmail.com', 'San Isidro', 1),
(5, 'Laura', 'Ram�rez', 34567890, 0, '1988-09-11', 987654326, 'laura@hotmail.com', 'Barranco', 1),
(6, 'Carlos', 'G�mez', 67890123, 1, '1992-12-12', 987654327, 'carlos@yahoo.com', 'Chorrillos', 1),
(7, 'Luc�a', 'Hern�ndez', 12345670, 0, '1980-02-28', 987654328, 'lucia@gmail.com', 'Lince', 1),
(8, 'Miguel', 'S�nchez', 45678901, 1, '1982-08-16', 987654329, 'miguel@yahoo.com', 'La Molina', 1),
(9, 'Paula', 'Torres', 78901234, 0, '1993-12-30', 987654330, 'paula@gmail.com', 'Puente Piedra', 1),
(10, 'Roberto', 'D�az', 23456789, 1, '1986-03-03', 987654331, 'roberto@gmail.com', 'San Borja', 1)
INSERT INTO Due�os (due�oId, dueNombre, dueApellidos, dueDNI, dueSexo, dueFechaNacimiento, dueCelular, dueEmail, dueDirecci�n, dueEst)
VALUES
    (11, 'Juan', 'Gonz�lez', 123456789, 1, '1990-05-15', 123456789, 'juan@example.com', 'Calle Principal 123', 1),
    (12, 'Mar�a', 'S�nchez', 987654328, 0, '1988-10-20', 987654321, 'maria@example.com', 'Avenida de las Flores 456', 1),
    (13, 'Pedro', 'Garc�a', 135792467, 1, '1995-03-25', 654321987, 'pedro@example.com', 'Calle del R�o 789', 1);





--mascotas
insert into Mascotas(due�oId,mascotaId,mascNombre,mascRaza,mascTipo,mascEdad,mascColor,mascPesoActual,mascEst) 
values(1,1,'Canelita','Dalmata','Perro',3,'Blanco',14,1),
(2,2, 'Firulais', 'Labrador', 'Perro', 2, 'Caf�', 20, 1),
(3,3, 'Luna', 'Golden Retriever', 'Perro', 1, 'Dorado', 12, 1),
(4,4, 'Max', 'Bulldog Franc�s', 'Perro', 4, 'Blanco y Negro', 18, 1),
(5,5, 'Rocky', 'Pastor Alem�n', 'Perro', 5, 'Negro y Marr�n', 25, 1),
(6,6, 'Pelusa', 'Persa', 'Perro', 2, 'Gris', 10, 1),
(7,7, 'Toby', 'Chihuahua', 'Perro', 3, 'Canela', 5, 1),
(8,8, 'Bobby', 'Schnauzer', 'Perro', 6, 'Gris y Blanco', 15, 1),
(9,9, 'Daisy', 'Shih Tzu', 'Perro', 2, 'Blanco y Marr�n', 8, 1),
(10,10, 'Nala', 'Pitbull', 'Perro', 3, 'Atigrado', 22, 1)
INSERT INTO Mascotas (mascotaId, mascNombre, mascRaza, mascTipo, mascEdad, mascColor, mascPesoActual, mascEst, due�oId)
VALUES
    (11, 'Firulais', 'Labrador', 'Perro', 3, 'Marr�n', 15.5, 1, 1),
    (12, 'Michi', 'Siam�s', 'Gato', 2, 'Blanco', 4.2, 1, 2),
    (13, 'Rex', 'D�lmata', 'Perro', 5, 'Blanco y negro', 20.8, 1, 1);


--precios
insert into Precios(precId,precTipoServicio,precio,precEst) 
values(1,'Ba�o de Mascota',30,1),
(2,'Cuidado de Mascota',20,1),
(3,'Vacuna anti rabia',80,1),
(4,'Pastilla para Perros',30,1),
(5,'Pastilla para Gatos',30,1),
(6,'Ba�o medicado',60,1),
(7,'Vacuna para dormir',100,1),
(8,'Cirugia',120,1),
(9,'Paseo de mascotas',20,1),
(10,'Vacuna para sarna',20,1)
INSERT INTO Precios (precId, precTipoServicio, precio, precEst)
VALUES
    (11, 'Ba�o b�sico', 50.00, 1),
    (12, 'Ba�o con corte de pelo', 80.00, 1),
    (13, 'Ba�o medicado', 120.00, 1);

--colaboradores
INSERT INTO Colaboradores (colabId, colabNombre, colabApellidos, colabDNI, colabSexo, colabFechaNacimiento, colabCelular, colabEmail, colabDirecci�n, colabEst)
VALUES(1, 'Juan', 'Perez', '12345678A', 1, '1990-05-15', '123456789', 'juan@gmail.com', 'Calle 123', 1),
(2, 'Maria', 'Gonzalez', '87654321B', 0, '1995-10-20', '987654321', 'maria@hotmail.com', 'Avenida 456', 1),
(3, 'Pedro', 'Lopez', '98765432C', 1, '1985-03-08', '456789012', 'pedro@outlook.com', 'Plaza Principal', 1),
(4, 'Ana', 'Martinez', '54321678D', 0, '1988-07-12', '654321098', 'ana@gmail.com', 'Paseo Central', 1),
(5, 'Luis', 'Sanchez', '34567891E', 1, '1992-12-25', '789012345', 'luis@hotmail.com', 'Callejon 789', 1),
(6, 'Elena', 'Rodriguez', '87654329F', 0, '1983-06-30', '901234567', 'elena@outlook.com', 'Camino Real', 1),
(7, 'Carlos', 'Fernandez', '23456789G', 1, '1979-09-18', '678901234', 'carlos@gmail.com', 'Avenida Norte', 1),
(8, 'Laura', 'Lopez', '65432198H', 0, '1998-04-05', '567890123', 'laura@hotmail.com', 'Calle Sur', 1),
(9, 'Mario', 'Gutierrez', '45678912I', 1, '1993-08-22', '345678901', 'mario@outlook.com', 'Avenida Oeste', 1),
(10, 'Sara', 'Diaz', '78912345J', 0, '1996-02-14', '234567890', 'sara@gmail.com', 'Calle Este', 1)


--servba
INSERT INTO ServiciosBa�o (servicioId, colabId, mascotaId, ServBFechaServicio, ServBHoraServicio, ServBFechaRecojo, ServBHoraRecojo, ServBPrecio, ServBTipoServicio, ServBColaboradorID, servBEstado)
VALUES(1, 1, 1, '2024-04-29', '09:00:00', '2024-04-29', '11:00:00', 50.00, 'Ba�o completo', 1, 1),
(2, 2, 2, '2024-04-29', '10:00:00', '2024-04-29', '12:00:00', 40.00, 'Ba�o y corte de pelo', 2, 1),
(3, 3, 3, '2024-04-29', '11:00:00', '2024-04-29', '13:00:00', 35.00, 'Ba�o b�sico', 3, 1),
(4, 4, 4, '2024-04-29', '12:00:00', '2024-04-29', '14:00:00', 45.00, 'Ba�o completo', 4, 1),
(5, 5, 5, '2024-04-29', '13:00:00', '2024-04-29', '15:00:00', 55.00, 'Ba�o y cepillado', 5, 1),
(6, 6, 6, '2024-04-29', '14:00:00', '2024-04-29', '16:00:00', 60.00, 'Ba�o completo y tratamiento antipulgas', 6, 1),
(7, 7, 7, '2024-04-29', '15:00:00', '2024-04-29', '17:00:00', 30.00, 'Ba�o b�sico', 7, 1),
(8, 8, 8, '2024-04-29', '16:00:00', '2024-04-29', '18:00:00', 25.00, 'Ba�o completo', 8, 1),
(9, 9, 9, '2024-04-29', '17:00:00', '2024-04-29', '19:00:00', 20.00, 'Ba�o y corte de pelo', 9, 1),
(10, 10, 10, '2024-04-29', '18:00:00', '2024-04-29', '20:00:00', 65.00, 'Ba�o completo y corte de pelo', 10, 1)
INSERT INTO ServiciosBa�o (servicioId, colabId, mascotaId, ServBFechaServicio, ServBHoraServicio, ServBFechaRecojo, ServBHoraRecojo, ServBPrecio, ServBTipoServicio, ServBColaboradorID, servBEstado)
VALUES
    (11, 1, 1, '2024-05-01', '10:00:00', '2024-05-01', '12:00:00', 50.00, 'Ba�o b�sico', 1, 1),
    (12, 2, 2, '2024-05-02', '11:00:00', '2024-05-02', '13:00:00', 80.00, 'Ba�o con corte de pelo', 2, 1),
    (13, 1, 3, '2024-05-03', '12:00:00', '2024-05-03', '14:00:00', 120.00, 'Ba�o medicado', 1, 1)




SELECT mascTipo, AVG(mascEdad) AS EdadPromedio
FROM Mascotas
GROUP BY mascTipo;

SELECT *
FROM ServiciosBa�o
WHERE servicioId = 1;



SELECT c.colabNombre, c.colabApellidos, COUNT(sb.servicioId) AS NumeroServicios
FROM Colaboradores c
LEFT JOIN ServiciosBa�o sb ON c.colabId = sb.colabId
GROUP BY c.colabNombre, c.colabApellidos;


SELECT
    P.precTipoServicio AS TipoDeServicio,
    SUM(SB.ServBPrecio) AS TotalIngresos
FROM
    ServiciosBa�o SB
INNER JOIN
    Precios P ON SB.ServBTipoServicio = P.precTipoServicio
WHERE
    SB.servBEstado = 1
GROUP BY
    P.precTipoServicio


SELECT c.colabId, c.colabNombre, c.colabApellidos, SUM(sb.ServBPrecio) AS TotalIngresos
FROM ServiciosBa�o sb
INNER JOIN Colaboradores c ON sb.colabId = c.colabId
WHERE YEAR(sb.ServBFechaServicio) = 2023
GROUP BY c.colabId, c.colabNombre, c.colabApellidos


SELECT colabNombre AS Nombre, colabApellidos AS Apellidos
FROM Colaboradores
UNION
SELECT dueNombre AS Nombre, dueApellidos AS Apellidos
FROM Due�os;



select 
    m.mascTipo as 'Tipo de mascota',
    sb.ServBTipoServicio as 'Tipo de servicio',
    min(sb.ServBPrecio) as 'Precio m�nimo',
    max(sb.ServBPrecio) as 'Precio m�ximo',
    count(*) as 'N�mero total de servicios',
    d.dueNombre as 'Nombre del due�o',
    d.dueApellidos as 'Apellido del due�o',
    d.dueDirecci�n as 'Direcci�n del due�o',
    c.colabNombre as 'Nombre del colaborador',
    c.colabApellidos as 'Apellido del colaborador'
from 
    ServiciosBa�o sb
join 
    Mascotas m on sb.mascotaId = m.mascotaId
join 
    Due�os d on m.due�oId = d.due�oId
join 
    Colaboradores c on sb.colabId = c.colabId
where 
    (d.dueApellidos like 'G%' OR d.dueApellidos like 'S%') -- por apellido del due�o
    and sb.ServBPrecio between 50 and 200 -- por precio del servicio
    and d.dueDirecci�n like '%Calle%' -- por direcci�n del due�o
group by 
    m.mascTipo, sb.ServBTipoServicio, d.dueNombre, d.dueApellidos, d.dueDirecci�n, c.colabNombre, c.colabApellidos, sb.ServBPrecio
order by
    m.mascTipo desc, d.dueApellidos desc, sb.ServBPrecio desc


declare @PromedioPrecioPerro float;
select @PromedioPrecioPerro = avg(ServBPrecio)
from ServiciosBa�o sb
join Mascotas m on sb.mascotaId = m.mascotaId
where m.mascTipo = 'Perro'

select
    m.mascTipo as 'Tipo de Mascota',
    sb.ServBTipoServicio as 'Tipo de Servicio',
    sb.ServBPrecio as 'Precio del Servicio',
    case 
        when (select count(*) from ServiciosBa�o where mascotaId = sb.mascotaId) = 1 then sb.ServBPrecio * 0.05
        when (select count(*) from ServiciosBa�o where mascotaId = sb.mascotaId) = 2 then sb.ServBPrecio * 0.08
        when (select count(*) from ServiciosBa�o where mascotaId = sb.mascotaId) > 2 then sb.ServBPrecio * 0.10
        else 0
    end as 'Descuento',
    sb.ServBPrecio * 0.18 as 'IGV',
    sb.ServBPrecio - 
    case 
        when (select count(*) from ServiciosBa�o where mascotaId = sb.mascotaId) = 1 then sb.ServBPrecio * 0.05
        when (select count(*) from ServiciosBa�o where mascotaId = sb.mascotaId) = 2 then sb.ServBPrecio * 0.08
        when (select count(*) from ServiciosBa�o where mascotaId = sb.mascotaId) > 2 then sb.ServBPrecio * 0.10
        else 0
    end + sb.ServBPrecio * 0.18 as 'Total',
    concat(d.dueNombre, ' ', d.dueApellidos) as 'Nombre y Apellido del Due�o',
    concat(c.colabNombre, ' ', c.colabApellidos) as 'Nombre y Apellido del Colaborador'
from 
    ServiciosBa�o sb
join 
    Mascotas m on sb.mascotaId = m.mascotaId
join 
    Due�os d on m.due�oId = d.due�oId
join 
    Colaboradores c on sb.colabId = c.colabId
where 
    sb.ServBFechaServicio between '2023-01-01' and '2024-12-31'
    and sb.ServBPrecio between 50 and 200
    and d.dueDirecci�n like '%Avenida%'
    and sb.ServBPrecio > @PromedioPrecioPerro
order by 
    sb.ServBPrecio desc
-- Crear el esquema pet
CREATE SCHEMA pet;

ALTER SCHEMA pet TRANSFER dbo.Due�os;
ALTER SCHEMA pet TRANSFER dbo.Mascotas;
ALTER SCHEMA pet TRANSFER dbo.Precios;
ALTER SCHEMA pet TRANSFER dbo.Colaboradores;
ALTER SCHEMA pet TRANSFER dbo.ServiciosBa�o;

IF OBJECT_ID('dbo.Vista1', 'V') IS NOT NULL
    ALTER SCHEMA pet TRANSFER dbo.Vista1;

IF OBJECT_ID('dbo.Vista2', 'V') IS NOT NULL
    ALTER SCHEMA pet TRANSFER dbo.Vista2;

-- Crear logins y usuarios
CREATE LOGIN ConsultorLogin WITH PASSWORD = 'Password123!';
CREATE USER ConsultorUser FOR LOGIN ConsultorLogin;

CREATE LOGIN ActualizadorLogin WITH PASSWORD = 'Password123!';
CREATE USER ActualizadorUser FOR LOGIN ActualizadorLogin;

CREATE LOGIN DepuradorLogin WITH PASSWORD = 'Password123!';
CREATE USER DepuradorUser FOR LOGIN DepuradorLogin;

GRANT SELECT ON database::veterinaria TO ConsultorUser;
GRANT UPDATE ON database::veterinaria to ActualizadorUser;
GRANT DELETE on database::veterinaria TO DepuradorUser;

-- Crear el esquema pet
CREATE SCHEMA pet;

ALTER SCHEMA pet TRANSFER dbo.Due�os;
ALTER SCHEMA pet TRANSFER dbo.Mascotas;
ALTER SCHEMA pet TRANSFER dbo.Precios;
ALTER SCHEMA pet TRANSFER dbo.Colaboradores;
ALTER SCHEMA pet TRANSFER dbo.ServiciosBa�o;

IF OBJECT_ID('dbo.Vista1', 'V') IS NOT NULL
    ALTER SCHEMA pet TRANSFER dbo.Vista1;

IF OBJECT_ID('dbo.Vista2', 'V') IS NOT NULL
    ALTER SCHEMA pet TRANSFER dbo.Vista2;

SELECT mascTipo, AVG(mascEdad) AS EdadPromedio
FROM pet.Mascotas
GROUP BY mascTipo;

SELECT *
FROM pet.ServiciosBa�o
WHERE servicioId = 1;

SELECT c.colabNombre, c.colabApellidos, COUNT(sb.servicioId) AS NumeroServicios
FROM pet.Colaboradores c
LEFT JOIN pet.ServiciosBa�o sb ON c.colabId = sb.colabId
GROUP BY c.colabNombre, c.colabApellidos;

SELECT
    P.precTipoServicio AS TipoDeServicio,
    SUM(SB.ServBPrecio) AS TotalIngresos
FROM
    pet.ServiciosBa�o SB
INNER JOIN
    pet.Precios P ON SB.ServBTipoServicio = P.precTipoServicio
WHERE
    SB.servBEstado = 1
GROUP BY
    P.precTipoServicio;

SELECT c.colabId, c.colabNombre, c.colabApellidos, SUM(sb.ServBPrecio) AS TotalIngresos
FROM pet.ServiciosBa�o sb
INNER JOIN pet.Colaboradores c ON sb.colabId = c.colabId
WHERE YEAR(sb.ServBFechaServicio) = 2023
GROUP BY c.colabId, c.colabNombre, c.colabApellidos;

SELECT colabNombre AS Nombre, colabApellidos AS Apellidos
FROM pet.Colaboradores
UNION
SELECT dueNombre AS Nombre, dueApellidos AS Apellidos
FROM pet.Due�os;

USE veterinaria;
GO

-- Limpiar las tablas antes de insertar datos de ejemplo
DELETE FROM pet.ServiciosBa�o;
DELETE FROM pet.Mascotas;
DELETE FROM pet.Due�os;
DELETE FROM pet.Colaboradores;

-- Insertar datos de ejemplo en la tabla pet.Due�os
INSERT INTO pet.Due�os (due�oId, dueNombre, dueApellidos, dueDNI, dueSexo, dueFechaNacimiento, dueCelular, dueEmail, dueDirecci�n, dueEst)
VALUES
(1, 'Juan', 'Garc�a', '12345678', 1, '1980-01-15', '912345678', 'juan.garcia@example.com', 'Calle Principal 123', 1),
(2, 'Mar�a', 'S�nchez', '87654321', 0, '1985-05-30', '987654321', 'maria.sanchez@example.com', 'Avenida Secundaria 456', 1),
(3, 'Pedro', 'Lopez', '45612378', 1, '1990-03-25', '956789123', 'pedro.lopez@example.com', 'Calle Terciaria 789', 1);

-- Insertar datos de ejemplo en la tabla pet.Mascotas
INSERT INTO pet.Mascotas (mascotaId, mascNombre, mascRaza, mascTipo, mascEdad, mascColor, mascPesoActual, mascEst, due�oId)
VALUES
(1, 'Firulais', 'Labrador', 'Perro', 3, 'Marr�n', 25.0, 1, 1),
(2, 'Michi', 'Siames', 'Gato', 2, 'Blanco', 5.0, 1, 2),
(3, 'Rex', 'Pastor Alem�n', 'Perro', 4, 'Negro', 30.0, 1, 1);

-- Insertar datos de ejemplo en la tabla pet.Colaboradores
INSERT INTO pet.Colaboradores (colabId, colabNombre, colabApellidos, colabDNI, colabSexo, colabFechaNacimiento, colabCelular, colabEmail, colabDirecci�n, colabEst)
VALUES
(1, 'Carlos', 'Hern�ndez', '12348765', 1, '1975-11-20', '923456789', 'carlos.hernandez@example.com', 'Calle Colaborador 321', 1),
(2, 'Laura', 'Mart�nez', '54321678', 0, '1988-08-10', '934567890', 'laura.martinez@example.com', 'Avenida Colaboradora 654', 1);

-- Insertar datos de ejemplo en la tabla pet.ServiciosBa�o
INSERT INTO pet.ServiciosBa�o (servicioId, colabId, mascotaId, ServBFechaServicio, ServBHoraServicio, ServBFechaRecojo, ServBHoraRecojo, ServBPrecio, ServBTipoServicio, ServBColaboradorID, servBEstado)
VALUES
(1, 1, 1, '2024-01-10', '10:00', '2024-01-10', '12:00', 150.0, 'Ba�o Completo', 1, 1),
(2, 2, 2, '2024-02-15', '09:00', '2024-02-15', '11:00', 75.0, 'Ba�o Sencillo', 2, 1),
(3, 1, 3, '2024-03-20', '14:00', '2024-03-20', '16:00', 200.0, 'Ba�o y Corte', 1, 1);

-- Ejecutar la consulta nuevamente
SELECT 
    m.mascTipo as 'Tipo de mascota',
    sb.ServBTipoServicio as 'Tipo de servicio',
    min(sb.ServBPrecio) as 'Precio m�nimo',
    max(sb.ServBPrecio) as 'Precio m�ximo',
    count(*) as 'N�mero total de servicios',
    d.dueNombre as 'Nombre del due�o',
    d.dueApellidos as 'Apellido del due�o',
    d.dueDirecci�n as 'Direcci�n del due�o',
    c.colabNombre as 'Nombre del colaborador',
    c.colabApellidos as 'Apellido del colaborador'
FROM 
    pet.ServiciosBa�o sb
JOIN 
    pet.Mascotas m ON sb.mascotaId = m.mascotaId
JOIN 
    pet.Due�os d ON m.due�oId = d.due�oId
JOIN 
    pet.Colaboradores c ON sb.colabId = c.colabId
WHERE 
    (d.dueApellidos LIKE 'G%' OR d.dueApellidos LIKE 'S%')
    AND sb.ServBPrecio BETWEEN 50 AND 200
    AND d.dueDirecci�n LIKE '%Calle%'
GROUP BY 
    m.mascTipo, sb.ServBTipoServicio, d.dueNombre, d.dueApellidos, d.dueDirecci�n, c.colabNombre, c.colabApellidos, sb.ServBPrecio
ORDER BY
    m.mascTipo DESC, d.dueApellidos DESC, sb.ServBPrecio DESC;