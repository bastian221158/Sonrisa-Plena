# Clínica Dental - Sistema de Gestión de Pacientes

Este proyecto es una aplicación web desarrollada en ASP.NET Core MVC para gestionar pacientes, turnos y tratamientos de una clínica dental.

## Requisitos

- [Visual Studio 2022](https://visualstudio.microsoft.com/es/vs/)
- .NET 6.0 o superior
- SQL Server (puedes usar SQL Server Express)
- Entity Framework Core

## ¿Qué contiene?

Este repositorio incluye un archivo `.rar` con el proyecto completo listo para usar en Visual Studio.

---

## Instrucciones de instalación

### 1. Descargar y extraer el proyecto

1. Descarga el archivo `.rar` desde la sección de archivos de este repositorio.
2. Extrae el contenido en una carpeta de tu elección (usa WinRAR o 7-Zip).
3. Asegúrate de mantener la estructura de carpetas intacta.

### 2. Abrir el proyecto

1. Abre **Visual Studio 2022**.
2. Haz clic en **"Abrir un proyecto o una solución"**.
3. Navega a la carpeta extraída y abre el archivo `.sln` del proyecto (por ejemplo: `ClinicaApi.sln`).

### 3. Configurar la base de datos

1. Revisa la cadena de conexión en `appsettings.json`. Por defecto se ve así:

```json
"ConnectionStrings": {
  "ClinicaConnection": "Server=DESKTOP-XXX\\SQLEXPRESS;Database=ClinicaDb;Trusted_Connection=True;TrustServerCertificate=True"
}
