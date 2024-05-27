use master
create database parteg
use parteg

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

-- g



