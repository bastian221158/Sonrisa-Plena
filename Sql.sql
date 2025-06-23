-- Elimina la base de datos si existe
USE master;
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ClinicaDb')
BEGIN
    ALTER DATABASE ClinicaDb SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ClinicaDb;
END

-- Crea la base de datos
CREATE DATABASE ClinicaDb;
GO

USE ClinicaDb;
GO

-- Tabla: Pacientes
CREATE TABLE Pacientes (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Apellido NVARCHAR(100) NOT NULL,
    FechaNacimiento DATE NULL,
    Rut NVARCHAR(15) NOT NULL,
    Telefono NVARCHAR(20),
    Email NVARCHAR(100),
    Direccion NVARCHAR(200)
);
GO

-- Tabla: Odontologos
CREATE TABLE Odontologos (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Apellido NVARCHAR(100) NOT NULL,
    Especialidad NVARCHAR(100),
    Matricula NVARCHAR(20) NOT NULL,
    Email NVARCHAR(100)
);
GO

-- Tabla: Tratamientos
CREATE TABLE Tratamientos (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL
);
GO

-- Tabla: Turnos
CREATE TABLE Turnos (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PacienteId INT NOT NULL,
    OdontologoId INT NOT NULL,
    Fecha DATETIME NOT NULL,
    Duracion INT NOT NULL,
    Estado NVARCHAR(50) NOT NULL,
    FOREIGN KEY (PacienteId) REFERENCES Pacientes(Id),
    FOREIGN KEY (OdontologoId) REFERENCES Odontologos(Id)
);
GO

-- Tabla: PlanesTratamiento
CREATE TABLE PlanesTratamiento (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PacienteId INT NOT NULL,
    OdontologoId INT NOT NULL,
    FOREIGN KEY (PacienteId) REFERENCES Pacientes(Id),
    FOREIGN KEY (OdontologoId) REFERENCES Odontologos(Id)
);
GO

-- Tabla: PasosTratamiento
CREATE TABLE PasosTratamiento (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PlanTratamientoId INT NOT NULL,
    TratamientoId INT NOT NULL,
    FechaEstimada DATE,
    Estado NVARCHAR(50),
    Observaciones NVARCHAR(255),
    FOREIGN KEY (PlanTratamientoId) REFERENCES PlanesTratamiento(Id),
    FOREIGN KEY (TratamientoId) REFERENCES Tratamientos(Id)
);
GO
