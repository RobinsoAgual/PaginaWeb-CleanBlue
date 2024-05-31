<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.productos.datos.Conexion, com.productos.negocio.GestorUsuarios" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
<header>
    <nav>
      <a href="index.jsp"><img style="float: left; max-width: 200px;" src="images/logo.jpeg" alt="Logo Clean Blue" title="Logo Clean Blue"></a>
      <ul>
        <li><a href="videos.jsp">Videos</a></li>
        <li><a href="historia.jsp">Historia</a></li>
        <li><a href="foro.jsp">Foro</a></li>
        <li><a href="busqueda1.jsp">Eventos</a></li>
        <li><a href="login.jsp">Login</a></li>
      </ul>
    </nav>
  </header>
  <br>
   <br>
    <br>
    
    <h2>Iniciar Sesión</h2>
    <%
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String nombre_us = request.getParameter("nombre_us");
            String contraseña = request.getParameter("contraseña");

            Conexion conexion = new Conexion();
            GestorUsuarios gestor = new GestorUsuarios(conexion);

            boolean usuarioValido = gestor.verificarUsuario(nombre_us, contraseña);

            if (usuarioValido) {
                // Redirigir al menú de administrador si el nombre de usuario es Robin Hood o Lenin
                if ("Robin Hood".equalsIgnoreCase(nombre_us) || "Lenin".equalsIgnoreCase(nombre_us)) {
                    response.sendRedirect("menu_administrador.jsp");
                } else {
                    // Enviar a menú de usuario normal
                    session.setAttribute("usuario", gestor.getNombre());
                    response.sendRedirect("menu_Usuario.jsp");
                }
                return;
            } else {
                out.println("<p style='color: red;'>Credenciales incorrectas. Por favor, inténtalo de nuevo.</p>");
            }
        }
    %>

    <form action="login.jsp" method="post">
        <label for="nombre_us">Nombre de Usuario:</label>
        <input type="text" id="nombre_us" name="nombre_us" required><br><br>

        <label for="contraseña">Contraseña:</label>
        <input type="password" id="contraseña" name="contraseña" required><br><br>

        <input type="submit" value="Iniciar Sesión">
    </form>

    <p>¿No tienes una cuenta? <a href="NuevoUsuario.jsp">Regístrate aquí</a>.</p>

<footer>
 <br>
 <h3>REDES SOCIALES</h3>
  <br>
        <a href="https://www.facebook.com/">
            <img width="80" height="84"src="images/facebook.png">
        </a>

        <a href="https://www.instagram.com/">
             <img width="80" height="84" src="images/instagram.png">
        </a>


        <hr>
        
        <p>&copy; 2024 Clean Blue - Protegiendo Nuestros Océanos, Un Residuo a la Vez</p>
    </footer>
</body>
</html>
