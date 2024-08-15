# Proyecto Asistencia Colegio 🛠️📊

# ANLLYMARTINEZ_AA2_EV01
Evidencia: GA7-220501096-AA2-EV02 Módulos de software codificados y probados / GA7-220501096-AA3-EV01 Codificación de módulos del software Stand alone, web y móvil de acuerdo al proyecto a desarrollar de Proyecto de control de asistencia para estudiantes y profesores. 

## Acerca del Proyecto

Este repositorio es una aplicación web desarrollada para registrar usuarios y mostrar esos datos utilizando Java Servlets, JSP y MySQL. 

## Contenido del Repositorio

- **index.jsp**: Página principal contiene un formulario, en donde se puede registrar usuarios utilizando el método POST y un botón para mostrar la lista de usuarios utilizando el método GET.
  
- **servlets.java**: Implementa la lógica del servidor para manejar las solicitudes HTTP. El método `doPost` inserta datos ue el métoen la base de datos, mientras qdo `doGet` redirige a `mostrar_datos.jsp`.

- **ConexionBaseDatos.java**: Contiene el método estático `initializeDataBase()` para establecer la conexión con la base de datos MySQL.

- **mostrar_datos.jsp**: Página JSP que muestra una tabla con los datos de usuarios extraídos de la base de datos.

## IDE y Herramientas Utilizadas

- JDK 22.0.2 o superior
- MySQL Database
- XAMPP (para el servidor MySQL)
- NetBeans IDE (opcional, pero recomendado)
- Maven

## Estado del Proyecto

- ✅ En proceso. - Evidencia Finalizada. 
- 🔄 Última actualización: 8/14/2024
- 🚫 No se han detectado errores
- 🌐 - 🌐 Se conecta a la base de datos alojada en [phpMyAdmin](http://localhost/phpmyadmin/index.php?route=/sql&pos=0&db=bdcontrolasistencia&table=usuario)

## Hecho por Anlly Zuleimy Martinez Vieda parte del programa Analisis y Desarrollo de Software (2721431)
