<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.seguridad.*, com.productos.negocio.*"%>
    
<%
    // Obt�n par�metros del formulario
    String str_id = request.getParameter("id");
    String str_categoria = request.getParameter("cmbCategoria");
    String nombre = request.getParameter("nombre");
    String fecha = request.getParameter("fecha");
    String hora = request.getParameter("hora");

    // Imprimir los valores en la consola
    System.out.println("ID: " + str_id);
    System.out.println("Categor�a: " + str_categoria);
    System.out.println("Nombre: " + nombre);
    System.out.println("Fecha: " + fecha);
    System.out.println("Hora: " + hora);

    // Validaci�n de par�metros
    if (str_id == null || str_categoria == null || nombre == null || fecha == null || hora == null ||
        str_id.isEmpty() || str_categoria.isEmpty() || nombre.isEmpty() || fecha.isEmpty() || hora.isEmpty()) {
        out.print("Error: Todos los campos son obligatorios.");
        return;
    }

    try {
        // Convertir par�metros a tipos adecuados
        int id = Integer.parseInt(str_id);
        int cat = Integer.parseInt(str_categoria);
        
        // Instancia del producto
        Producto prod = new Producto();

        // Inserci�n del producto en la base de datos
        String resultado = prod.ingresarEvento(id, cat, nombre, fecha, hora);

        // Mostrar el resultado de la inserci�n
        out.print(resultado);
    } catch (NumberFormatException e) {
        out.print("Error: Formato incorrecto en los campos num�ricos.");
    }
%>
