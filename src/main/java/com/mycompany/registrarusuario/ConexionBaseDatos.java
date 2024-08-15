package com.mycompany.registrarusuario;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBaseDatos {
    //Metodo para inicializar la conexion a la base de datos
static Connection initializeDataBase() throws SQLException {
    try {
        // Carga el controlador JDBC para MySQL
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        // Si el controlador no se encuentra, lanza una excepción de SQL
        throw new SQLException("MySQL JDBC driver not found.", e);
    }
    
    String url = "jdbc:mysql://localhost:3306/bdcontrolasistencia";
    String user = "root";
    String password = ""; 
    
    return DriverManager.getConnection(url, user, password);
}


    public static class BasedatosConexion {
        private static final String URL = "jdbc:mysql://localhost:3306/bdcontrolasistencia";
        private static final String USUARIO = "root"; 
        private static final String PASSWORD = ""; 
        
        // Método para obtener la conexión a la base de datos
        public static Connection getConnection() {
            Connection conexion = null;
            try {
                conexion = DriverManager.getConnection(URL, USUARIO, PASSWORD);
            } catch (SQLException e) {
                System.err.println("Error al conectar a la base de datos: " + e.getMessage());
            }
            // Retorna la conexión (null si hubo un error)
            return conexion;
        }
    }
}
