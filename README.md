# Task Manager API
API REST desarrollada en .NET 9.0.1 para la gestión de tareas con autenticación y autorización de usuarios utilizando SQL Server.
## Tecnologías Utilizadas
- .NET 9.0.1
- Entity Framework Core 6.0.0
- SQL Server
- JWT Authentication
- BCrypt para hash de contraseñas
- Swagger para documentación de la API
## Requisitos Previos
- .NET 9.0.1 SDK
- SQL Server
## Configuración
### Base de Datos
El proyecto está configurado para utilizar SQL Server. Las cadenas de conexión se encuentran en `appsettings.json`:
```json
"ConnectionStrings": {
  "DefaultConnection": "Server=localhost;Database=TaskManager;User Id=sa;Password=YourStrongPassword123!;TrustServerCertificate=True;"
}
JWT Authentication
La configuración del JWT se encuentra en appsettings.json:

"JWT": {
  "Key": "This_is_a_secure_key_for_development_purposes_only",
  "Issuer": "TaskManagerAPI",
  "Audience": "TaskManagerClient"
}
Estructura del Proyecto
Controllers/: Contiene los controladores que manejan las peticiones HTTP
Data/: Contiene la configuración de Entity Framework y DbContext
Models/: Contiene las clases de modelo y DTOs
Scripts/: Scripts de utilidad y migraciones
NuGet Packages
Los siguientes paquetes NuGet están utilizados en el proyecto:

<ItemGroup>
  <PackageReference Include="Microsoft.AspNetCore.OpenApi" Version="9.0.1" />
  <PackageReference Include="Microsoft.EntityFrameworkCore" Version="6.0.0" />
  <PackageReference Include="Microsoft.EntityFrameworkCore.SqlServer" Version="6.0.0" />
  <PackageReference Include="Swashbuckle.AspNetCore" Version="6.2.3" />
  <PackageReference Include="Swashbuckle.AspNetCore.Annotations" Version="6.2.3" />
  <PackageReference Include="Swashbuckle.AspNetCore.Swagger" Version="6.2.3" />
  <PackageReference Include="Swashbuckle.AspNetCore.SwaggerGen" Version="6.2.3" />
  <PackageReference Include="Swashbuckle.AspNetCore.SwaggerUI" Version="6.2.3" />
  <PackageReference Include="Microsoft.EntityFrameworkCore.Tools" Version="8.0.0" />
</ItemGroup>
Endpoints API
Autenticación
POST /api/auth/register: Registro de nuevo usuario
POST /api/auth/login: Inicio de sesión y obtención de token JWT
Tareas
GET /api/tasks: Obtener todas las tareas del usuario autenticado
GET /api/tasks/{id}: Obtener una tarea específica
POST /api/tasks: Crear una nueva tarea
PUT /api/tasks/{id}: Actualizar una tarea existente
DELETE /api/tasks/{id}: Eliminar una tarea
Cors
El API está configurado para permitir solicitudes de cualquier origen (CORS "AllowAll") para facilitar el desarrollo. En un entorno de producción, esto debería ajustarse.

Seguridad
Los passwords son hasheados con BCrypt antes de almacenarse
La autenticación utiliza JWT tokens
Las rutas de tareas están protegidas y requieren autenticación
Ejecución del Proyecto
Para ejecutar el proyecto localmente:

cd TaskManagerAPI
dotnet run
La API estará disponible en http://0.0.0.0:5000 y https://0.0.0.0:5001.

Migraciones de Base de Datos
Para aplicar migraciones:

cd TaskManagerAPI
dotnet ef database update
Para crear una nueva migración:

dotnet ef migrations add NombreMigracion
This content now reflects the correct .NET version and the SQL Server setup. Let me know if you need any further modifications!