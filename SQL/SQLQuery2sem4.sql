use master;
create database farmacias;
use farmacias;

-- Tabla de Ciudades
CREATE TABLE Ciudades (
    CiudadID INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    CodigoPostal VARCHAR(10) NOT NULL
);

-- Tabla de Farmacias
CREATE TABLE Farmacias (
    FarmaciaID INT PRIMARY KEY,
    CiudadID INT,
    Direccion VARCHAR(255) NOT NULL,
    GuardiaDia VARCHAR(20) NOT NULL,
    FOREIGN KEY (CiudadID) REFERENCES Ciudades(CiudadID)
);

-- Tabla de Farmacéuticos
CREATE TABLE Farmaceuticos (
    FarmaceuticoID INT PRIMARY KEY,
    CiudadID INT,
    NombreApellido VARCHAR(255) NOT NULL,
    FOREIGN KEY (CiudadID) REFERENCES Ciudades(CiudadID)
);

-- Tabla de Empleados
CREATE TABLE Empleados (
    CUIT VARCHAR(20) PRIMARY KEY,
    FarmaciaID INT,
    Nombre VARCHAR(100) NOT NULL,
    FechaIngreso DATE NOT NULL,
    Enfermedades VARCHAR(255),
    FOREIGN KEY (FarmaciaID) REFERENCES Farmacias(FarmaciaID)
);

-- Tabla de Medicamentos
CREATE TABLE Medicamentos (
    MedicamentoID INT PRIMARY KEY,
    NombreComercial VARCHAR(100) NOT NULL,
    Presentacion VARCHAR(100) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    AccionesTerapeuticas VARCHAR(255) NOT NULL
);

-- Tabla de Monodrogas
CREATE TABLE Monodrogas (
    MonodrogaID INT PRIMARY KEY,
    NombreCientifico VARCHAR(100) NOT NULL,
    NombreComercial VARCHAR(100) NOT NULL,
    CantidadEnMedicamento DECIMAL(10, 2) NOT NULL
);

-- Tabla de Laboratorios
CREATE TABLE Laboratorios (
    LaboratorioID INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Domicilio VARCHAR(255) NOT NULL,
    NombreDueño VARCHAR(255) NOT NULL
);

-- Tabla de Relación entre Farmacias y Medicamentos (Stock)
CREATE TABLE StockFarmacias (
    FarmaciaID INT,
    MedicamentoID INT,
    Cantidad INT NOT NULL,
    PRIMARY KEY (FarmaciaID, MedicamentoID),
    FOREIGN KEY (FarmaciaID) REFERENCES Farmacias(FarmaciaID),
    FOREIGN KEY (MedicamentoID) REFERENCES Medicamentos(MedicamentoID)
);

-- Tabla de Relación entre Medicamentos y Monodrogas
CREATE TABLE MedicamentosMonodrogas (
    MedicamentoID INT,
    MonodrogaID INT,
    PRIMARY KEY (MedicamentoID, MonodrogaID),
    FOREIGN KEY (MedicamentoID) REFERENCES Medicamentos(MedicamentoID),
    FOREIGN KEY (MonodrogaID) REFERENCES Monodrogas(MonodrogaID)
);	

-- Tabla de Relación entre Medicamentos y Laboratorios
CREATE TABLE MedicamentosLaboratorios (
    MedicamentoID INT,
    LaboratorioID INT,
    PRIMARY KEY (MedicamentoID, LaboratorioID),
    FOREIGN KEY (MedicamentoID) REFERENCES Medicamentos(MedicamentoID),
    FOREIGN KEY (LaboratorioID) REFERENCES Laboratorios(LaboratorioID)
);

-- Tabla de Acciones Terapéuticas
CREATE TABLE AccionesTerapeuticas (
    AccionID INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    TiempoEfecto INT NOT NULL -- En horas
);

-- Tabla de Relación entre Medicamentos y Acciones Terapéuticas
CREATE TABLE MedicamentosAcciones (
    MedicamentoID INT,
    AccionID INT,
    PRIMARY KEY (MedicamentoID, AccionID),
    FOREIGN KEY (MedicamentoID) REFERENCES Medicamentos(MedicamentoID),
    FOREIGN KEY (AccionID) REFERENCES AccionesTerapeuticas(AccionID)
);

