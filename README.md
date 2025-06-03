# School Management System

A modern, microservices-based School Management System built with .NET Core. This system provides a comprehensive solution for managing school operations, including student information, course management, and administrative tasks.

## Architecture

The system follows a microservices architecture with the following components:

- **ApiGateway.API**: API Gateway service using Ocelot for routing and service discovery
- **CountryService.API**: Microservice for managing country-related data
- **SchoolPortal.UI**: Web interface built with ASP.NET Core MVC
- **SchoolPortal.DB**: Sample database implementation using Entity Framework Core Code First approach
- **SchoolPortal.Common**: Shared components and utilities
- **SchoolManagementSystem**: Main application project

## Technology Stack

### Backend
- .NET 9.0 (Preview)
- ASP.NET Core Web API
- Entity Framework Core (Code First Approach)
- SQL Server / SQLite
- Ocelot API Gateway
- Swagger/OpenAPI

### Frontend
- ASP.NET Core MVC
- Bootstrap 5
- Microsoft Identity UI

### Key Features
- Microservices Architecture
- API Gateway Pattern
- Service Discovery
- Authentication & Authorization
- RESTful APIs
- Swagger Documentation
- Code First Database Design
- Sample Database Implementation

## Prerequisites

- .NET 9.0 SDK
- Visual Studio 2022 or later
- SQL Server or SQLite
- Git

## Getting Started

1. Clone the repository
2. Open the solution in Visual Studio
3. Restore NuGet packages
4. Update database connection strings in appsettings.json
5. Run the following projects in order:
   - ApiGateway.API
   - CountryService.API
   - SchoolPortal.UI

## Project Structure

```
SchoolManagementSystem/
├── ApiGateway.API/         # API Gateway service
├── CountryService.API/     # Country management microservice
├── SchoolPortal.UI/        # Web interface
├── SchoolPortal.DB/        # Sample database 
├── SchoolPortal.Common/    # Shared components
└── SchoolManagementSystem/ # Main application
```

## Database Design

The project uses Entity Framework Core's Code First approach, where:
- Database schema is defined through C# classes
- Migrations are used to create and update the database
- Sample database implementation in SchoolPortal.DB project
- Easy to modify and extend the data model

## Dependencies

### ApiGateway.API
- MMLib.SwaggerForOcelot (9.0.0)
- Ocelot (24.0.0)
- Ocelot.Provider.Consul (24.0.0)
- Swashbuckle.AspNetCore (8.1.0)

### SchoolPortal.UI
- Microsoft.AspNetCore.Identity.EntityFrameworkCore (9.0.0)
- Microsoft.AspNetCore.Identity.UI (9.0.0)
- Microsoft.EntityFrameworkCore.Sqlite (9.0.0)
- Microsoft.EntityFrameworkCore.SqlServer (9.0.0)
- Microsoft.EntityFrameworkCore.Tools (9.0.0)
- Microsoft.VisualStudio.Web.CodeGeneration.Design (9.0.0)

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details. 
