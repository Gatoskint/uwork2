use master;
create database ordenes;
use ordenes;

-- -----------------------------------------------------
-- cliente
-- -----------------------------------------------------
CREATE TABLE cliente (
  idcliente INT NOT NULL,
  NomClie varchar(max) NOT NULL,
  ApeClie varchar(max) NULL,
  CiudadClie varchar(max) NULL,
  DistritoClie varchar(max) NULL,
  CreditoClie FLOAT NULL,
  EstadoClie varchar(max) NOT NULL,
  PRIMARY KEY (idcliente))

-- -----------------------------------------------------
-- Empleado
-- -----------------------------------------------------
CREATE TABLE Empleado (
  idEmpleado INT NOT NULL,
  SupervisorId INT NULL,
  NomEmp varchar(max) NOT NULL,
  ApellidoEmp varchar(max) NOT NULL,
  TelefEmp varchar(max) NULL,
  EmailEmp varchar(max) NULL,
  DepartamentoEmp varchar(max) NULL,
  ComisionEmp FLOAT NOT NULL,
  EstadoEmp INT NOT NULL,
  PRIMARY KEY (idEmpleado),
  CONSTRAINT fk_Empleado_Empleado1
    FOREIGN KEY (SupervisorId)
    REFERENCES Empleado (idEmpleado))

-- -----------------------------------------------------
-- Orden
-- -----------------------------------------------------
CREATE TABLE Orden (
  idOrden INT NOT NULL,
  cliente_idcliente INT NOT NULL,
  Empleado_idEmpleado INT NOT NULL,
  FechaOrd DATE NULL,
  NomOrd  varchar(max) NOT NULL,
  CiudadOrd varchar(max) NOT NULL,
  DistritoOrd varchar(max) NOT NULL,
  EstadoOrd INT NULL,
  PRIMARY KEY (idOrden),
  CONSTRAINT fk_Orden_cliente
    FOREIGN KEY (cliente_idcliente)
    REFERENCES Cliente (idcliente),
  CONSTRAINT fk_Orden_Empleado1
    FOREIGN KEY (Empleado_idEmpleado)
    REFERENCES Empleado (idEmpleado))
    
	-- -----------------------------------------------------
-- Producto
-- -----------------------------------------------------
CREATE TABLE Producto (
  idProducto INT NOT NULL,
  NomProd varchar(max) NOT NULL,
  StockProd FLOAT NULL,
  PrecioProd FLOAT NULL,
  EstadoProd INT NULL,
  PRIMARY KEY (idProducto))


-- -----------------------------------------------------
-- Orden_has_Producto
-- -----------------------------------------------------
CREATE TABLE Orden_has_Producto (
  Orden_idOrden INT NOT NULL,
  Producto_idProducto INT NOT NULL,
  CantidadOrdProd FLOAT NULL,
  PrecioOrdProd FLOAT NULL,
  PRIMARY KEY (Orden_idOrden, Producto_idProducto),
  CONSTRAINT fk_Orden_has_Producto_Orden1
    FOREIGN KEY (Orden_idOrden)
    REFERENCES Orden(idOrden),
  CONSTRAINT fk_Orden_has_Producto_Producto1
    FOREIGN KEY (Producto_idProducto)
    REFERENCES Producto (idProducto))
/*
CRUD
C reate (insert)
R ead (select)
U pdate
D elete
*/

/* insertar valores y definir*/
/*para cliente*/
insert into cliente(NomClie, ApeClie, CiudadClie, DistritoClie, CreditoClie, EstadoClie, idcliente)
values('Jorge', 'Ramírez', 'lima', 'Lurín', 200, 0, 1);
insert into cliente(NomClie, ApeClie, CiudadClie, DistritoClie, CreditoClie, EstadoClie, idcliente)
values('Fernanda', 'González', 'lima', 'Chorrillos', 100, 1, 2);
insert into cliente(NomClie, ApeClie, CiudadClie, DistritoClie, CreditoClie, EstadoClie, idcliente)
values('Daniel', 'Herrera', 'lima', 'Pueblo Libre', 20, 1, 3);
insert into cliente(NomClie, ApeClie, CiudadClie, DistritoClie, CreditoClie, EstadoClie, idcliente)
values('Valeria', 'López', 'lima', 'San Isidro', 310, 1, 4);
insert into cliente(NomClie, ApeClie, CiudadClie, DistritoClie, CreditoClie, EstadoClie, idcliente)
values('Alejandro', 'Díaz', 'lima', 'Miraflores', 301, 0, 5);
insert into cliente(NomClie, ApeClie, CiudadClie, DistritoClie, CreditoClie, EstadoClie, idcliente)
values('Carolina', 'Martínez', 'lima', 'San Miguel', 220, 1, 6);
insert into cliente(NomClie, ApeClie, CiudadClie, DistritoClie, CreditoClie, EstadoClie, idcliente)
values('Pablo', 'Gómez', 'lima', 'La Molina', 510, 1, 7);
insert into cliente(NomClie, ApeClie, CiudadClie, DistritoClie, CreditoClie, EstadoClie, idcliente)
values('Amanda', 'Fernández', 'lima', 'Surco', 10000, 0, 8);
insert into cliente(NomClie, ApeClie, CiudadClie, DistritoClie, CreditoClie, EstadoClie, idcliente)
values('Matías', 'Alvarez', 'lima', 'Barranco', 12000, 1, 9);
insert into cliente(NomClie, ApeClie, CiudadClie, DistritoClie, CreditoClie, EstadoClie, idcliente)
values('Natalia', 'Rodríguez', 'lima', 'Rímac', 10, 1, 10);

/*para empleado*/
insert into Empleado(idEmpleado, SupervisorId, NomEmp, ApellidoEmp, TelefEmp, EmailEmp, DepartamentoEmp, ComisionEmp, EstadoEmp)
values(1, null,'Carlos', 'Pérez', '999888777', 'carlos@email.com', 'Ventas', 200, 1);
insert into Empleado(idEmpleado, SupervisorId, NomEmp, ApellidoEmp, TelefEmp, EmailEmp, DepartamentoEmp, ComisionEmp, EstadoEmp)
values(2, null, 'Laura', 'Martínez', '999888776', 'laura@email.com', 'Ventas', 460, 1);
insert into Empleado(idEmpleado, SupervisorId, NomEmp, ApellidoEmp, TelefEmp, EmailEmp, DepartamentoEmp, ComisionEmp, EstadoEmp)
values(3, null, 'Diego', 'Sánchez', '999888775', 'diego@email.com', 'Ventas', 900, 0);
insert into Empleado(idEmpleado, SupervisorId, NomEmp, ApellidoEmp, TelefEmp, EmailEmp, DepartamentoEmp, ComisionEmp, EstadoEmp)
values(4, null, 'Valentina', 'Lara', '999888774', 'valentina@email.com', 'Ventas', 600, 1);
insert into Empleado(idEmpleado, SupervisorId, NomEmp, ApellidoEmp, TelefEmp, EmailEmp, DepartamentoEmp, ComisionEmp, EstadoEmp)
values(5, null, 'Andrés', 'Díaz', '999888773', 'andres@email.com', 'Ventas', 1000, 0);
insert into Empleado(idEmpleado, SupervisorId, NomEmp, ApellidoEmp, TelefEmp, EmailEmp, DepartamentoEmp, ComisionEmp, EstadoEmp)
values(6, null, 'María', 'García', '999888772', 'maria@email.com', 'Tecnología', 20000, 1);
insert into Empleado(idEmpleado, SupervisorId, NomEmp, ApellidoEmp, TelefEmp, EmailEmp, DepartamentoEmp, ComisionEmp, EstadoEmp)
values(7, null, 'Juan', 'Soto', '999888771', 'juan@email.com', 'Tecnología', 10, 1);
insert into Empleado(idEmpleado, SupervisorId, NomEmp, ApellidoEmp, TelefEmp, EmailEmp, DepartamentoEmp, ComisionEmp, EstadoEmp)
values(8, null, 'Camila', 'Fernández', '999888770', 'camila@email.com', 'Tecnología', 20, 1);
insert into Empleado(idEmpleado, SupervisorId, NomEmp, ApellidoEmp, TelefEmp, EmailEmp, DepartamentoEmp, ComisionEmp, EstadoEmp)
values(9, null, 'Lucas', 'Gómez', '999888769', 'lucas@email.com', 'Recursos Humanos', 100, 0);
insert into Empleado(idEmpleado, SupervisorId, NomEmp, ApellidoEmp, TelefEmp, EmailEmp, DepartamentoEmp, ComisionEmp, EstadoEmp)
values(10, null, 'Daniela', 'López', '999888768', 'daniela@email.com', 'Recursos Humanos', 2000, 1);

/*para producto*/
insert into Producto(idProducto, NomProd, StockProd, PrecioProd, EstadoProd)
values(1, 'Camisa', 15, 50, 0);
insert into Producto(idProducto, NomProd, StockProd, PrecioProd, EstadoProd)
values(2, 'Pantalón', 20, 80, 1);
insert into Producto(idProducto, NomProd, StockProd, PrecioProd, EstadoProd)
values(3, 'Zapatos', 30, 120, 1);
insert into Producto(idProducto, NomProd, StockProd, PrecioProd, EstadoProd)
values(4, 'Corbata', 25, 30, 0);
insert into Producto(idProducto, NomProd, StockProd, PrecioProd, EstadoProd)
values(5, 'Reloj', 10, 150, 1);
insert into Producto(idProducto, NomProd, StockProd, PrecioProd, EstadoProd)
values(6, 'Gorra', 18, 25, 0);
insert into Producto(idProducto, NomProd, StockProd, PrecioProd, EstadoProd)
values(7, 'Bolso', 22, 100, 1);
insert into Producto(idProducto, NomProd, StockProd, PrecioProd, EstadoProd)
values(8, 'Bufanda', 12, 40, 0);
insert into Producto(idProducto, NomProd, StockProd, PrecioProd, EstadoProd)
values(9, 'Gafas de sol', 8, 70, 1);
insert into Producto(idProducto, NomProd, StockProd, PrecioProd, EstadoProd)
values(10, 'Pendientes', 6, 60, 1);


/*llamar a la tabla, visualizar datos*/
select * from Producto;