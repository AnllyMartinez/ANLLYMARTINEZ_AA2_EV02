package com.mycompany.registrarusuario;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "servlets", urlPatterns = {"/servlets"})
public class servlets extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        }
    //Metodo GET
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("mostrar_datos.jsp");

    }

    //Metodo POST
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    try (
        Connection conexion = ConexionBaseDatos.initializeDataBase();
        //Sentencia SQL para insertar datos a la tabla 'usuario'
        PreparedStatement statement = conexion.prepareStatement("INSERT INTO `usuario` (idUsuario, nombre, horario, rol) VALUES (?, ?, ?, ?)");
    ) {
        statement.setString(1, request.getParameter("idUsuario"));
        statement.setString(2, request.getParameter("nombre"));
        statement.setString(3, request.getParameter("horario"));
        statement.setString(4, request.getParameter("rol"));
        
        statement.execute();
        //Se pone una alerta para saber si se ingresaron los datos correctamente
        PrintWriter out = response.getWriter();
        out.println("<html><body><h1><script>alert('Los datos se ingresaron correctamente'); location.href='index.jsp';</script></h1></body></html>");
        
    } catch (SQLException ex) {
        //Mostrar cualquier error del servidor al registrar datos
        Logger.getLogger(servlets.class.getName()).log(Level.SEVERE, null, ex);
        //Se pone una alerta para saber si hubo un error al ingresar los datos
        PrintWriter out = response.getWriter();
        out.println("<html><body><h1><script>alert('Error al ingresar datos: " + ex.getMessage() + "'); location.href='index.jsp';</script></h1></body></html>");
    }
}
}
   

    