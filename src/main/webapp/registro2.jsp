<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.GestorUsuarios"%>
    
<%
    // Obt�n par�metros del formulario
    String str_id = request.getParameter("id_usuario");
    String nombre = request.getParameter("nombre_us");
    String correo = request.getParameter("correo_us");
    String contrase�a = request.getParameter("contrase�a");

    // Validaci�n de par�metros
    if (str_id == null || nombre == null || correo == null || contrase�a == null ||
        str_id.isEmpty() || nombre.isEmpty() || correo.isEmpty() || contrase�a.isEmpty()) {
        out.print("Error: Todos los campos son obligatorios.");
        return;
    }

    try {
        // Convertir par�metro id_usuario a tipo adecuado
        int id_usuario = Integer.parseInt(str_id);
        
        // Instancia del gestor de usuarios
        GestorUsuarios gestorUsuarios = new GestorUsuarios();

        // Inserci�n del usuario en la base de datos
        String resultado = gestorUsuarios.ingresarUsuario(id_usuario, nombre, correo, contrase�a);

        // Mostrar el resultado de la inserci�n
        out.print(resultado);
    } catch (NumberFormatException e) {
        out.print("Error: Formato incorrecto en el campo de ID de usuario.");
    }
%>
