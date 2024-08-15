<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>Mostrar Datos</title>
    </head>
    <body>
        <!-- Tabla que va a mostrar datos de la base de datos -->
        <table class="table table-striped">        
            <thead class="bg-light sticky-top">
                <tr>
                    <!-- Encabezados de la tabla -->
                    <th scope="col">Id Usuario</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Horario</th>
                    <th scope="col">Rol</th>
                </tr>
            </thead>
            
            <tbody>
             <%
        // URL de la base de datos MySQL
        String URL = "jdbc:mysql://localhost:3306/bdcontrolasistencia";
        String USUARIO = "root"; 
        String PASSWORD = ""; 
        Connection conexion = null;

        try {
            // Carga el controlador JDBC de MySQL
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            conexion = DriverManager.getConnection(URL, USUARIO, PASSWORD);
            // Statement para ejecutar consultas SQL
            Statement statement = conexion.createStatement();
            //Consulta SQL para obtener todos los registros de la tabla "usuario"
            ResultSet rs = statement.executeQuery("SELECT * FROM usuario");

            while (rs.next()) {
        %>
            <tr>
                <td><%= rs.getString(1) %></td>  
                <td><%= rs.getString(2) %></td> 
                <td><%= rs.getString(3) %></td> 
                <td><%= rs.getString(4) %></td> 
            </tr>
            <% 
            }

            rs.close();
            statement.close();
        } catch (Exception e) {
            // Muestrar un mensaje de error en caso de que ocurra una excepción
            out.println("Error: " + e.getMessage());
        } finally {
            // Cierra la conexión a la base de datos si no es nula
            if (conexion != null) try { conexion.close(); } catch (SQLException ignore) {}
        }
        %>
            </tbody>
        </table>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    </body>
</html>
