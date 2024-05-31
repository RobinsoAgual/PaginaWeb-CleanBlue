<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" session="true" import="java.sql.*, com.productos.datos.Conexion, com.productos.negocio.GestorUsuarios"%>
<%
    String nombre_us = request.getParameter("nombre_us");
    String contraseña = request.getParameter("contraseña");
    GestorUsuarios gestor = new GestorUsuarios();
    
    boolean usuarioValido = gestor.verificarUsuario(nombre_us, contraseña);
    if (usuarioValido) {
        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuario", gestor.getNombre());
        response.sendRedirect("menu_Usuario.jsp");
    } else {
        response.sendRedirect("login.jsp?error=Datos+incorrectos.+Vuelva+a+intentarlo.");
    }
%>
