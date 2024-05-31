<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.productos.seguridad.*, com.productos.negocio.*"%>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NUEVO EVENTO-CAMPAÑA-CONFERENCIA</title>
  <link rel="stylesheet" href="css/styles.css"  href="css/estilos.css" >
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
        <li><a href="cerrarSesion.jsp">cerrarSesion</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <section>
      <h1>Menú Administrador</h1>
      <h2>Bienvenido, <%= session.getAttribute("usuario") %></h2> <!-- Aquí se muestra el nombre del usuario -->
    </section>
    
    <ul>
        <li><a href="NuevoEvento.jsp">Ingresar Nuevos Eventos y Campañas</a></li>
              <li><a href="consulta.jsp">Listado de Eventos, Campañas y conferencias</a></li>
      </ul>
  </main>

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
