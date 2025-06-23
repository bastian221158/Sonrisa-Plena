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
```
## Funcionalidades principales

### Pacientes
- Registro y gestión de datos personales: Nombre, RUT, Teléfono, Email y Dirección.
- Historial completo de tratamientos realizados.
- Operación para solicitar citas de manera sencilla.

### Turnos
- Registro de citas con fecha, hora y duración específicas.
- Asociación directa con pacientes y odontólogos.
- Estado del turno: Pendiente, Confirmado, Realizado o Cancelado.
- Visualización semanal de la agenda para cada profesional.

### Odontólogos
- ABM (Alta, Baja, Modificación) de profesionales, incluyendo nombre, matrícula, especialidad y email.
- Acceso a su propia agenda de turnos.
- Acceso a las fichas clínicas de los pacientes asignados.

### Tratamientos
- ABM de tratamientos ofrecidos: nombre, descripción y precio estimado.
- Registro de tratamientos realizados para actualizar el historial clínico de los pacientes.

---

## Imágenes del proyecto

![Pantalla de Pacientes](https://i.ibb.co/84c0KTk4/image.png)

![Pantalla de Pacientes](https://i.ibb.co/LXD3Wv1M/image.png)

![Home](https://i.ibb.co/1fCfXThj/image.png)

---
