# Sistema de Gestión de Tasas

## Acerca de
Esta es una aplicación de gestión de tasas que permite a los usuarios hacer seguimiento y administrar tipos de cambio. La aplicación se integra con Google Sheets para el almacenamiento de datos y proporciona notificaciones en tiempo real cuando las tasas cambian.

## Características Principales
- Autenticación de usuarios
- Interfaz de gestión de tasas
- Integración con Google Sheets
- Notificaciones por correo de cambios en las tasas

## Tecnologías Utilizadas
- **Ruby on Rails 7**: Elegido principalmente por ser la tecnología que utilizo actualmente
- **Tailwind CSS**: Utilizado para estilos modernos y minimalistas
- **Devise**: Maneja la autenticación segura de usuarios
- **Google Sheets API**: Permite leer y escribir las tasas de cambio directamente en una hoja de cálculo de Google, facilitando la gestión y visualización de datos para los usuarios

## Comenzar
1. Clonar el repositorio
2. Instalar dependencias:
   ```bash
   bundle install
   ```
3. Iniciar el servidor:
   ```bash
   bin/dev
   ```
4. Visitar http://localhost:3000

## Desarrollo
La aplicación corre en el puerto 3000.