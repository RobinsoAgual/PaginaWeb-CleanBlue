<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
HttpSession sesion = request.getSession(false);
if (sesion == null || sesion.getAttribute("usuario") == null) {
%>
    <script type="text/javascript">
        alert("Si quieres acceder a este contenido debes registrarte");
        window.location.href = "login.jsp";
    </script>
<%
    return;
}
%>


<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Clean Blue- Eventos</title>
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>
  <header>
    <nav>
      <a href="index.jsp"><img style="float: left; max-width: 200px;" src="images/logo.jpeg" alt="Logo Clean Blue" title="Logo Clean Blue"></a>
      <ul>
        <li><a href="videos.jsp">Videos</a></li>
        <li><a href="historia.jsp">Historia</a></li>
        <li><a href="foro.jsp">Foro</a></li>
           <li><a href="eventos.jsp">Eventos</a></li>
        <li><a href="login.jsp">Login</a></li>
      </ul>
    </nav>
  </header>
<body>
    
    <article>
        <h2>Acciones disponibles:</h2>
        <ul>
            <li><a href="consulta.jsp" class="button">Mostrar todos los eventos activos</a></li>
            <li><a href="busqueda.jsp" class="button">Consulta por tipo de eventos </a></li>
        </ul>
    </article>
    
    
     <footer>
    <ul>
      <li><a href="https://www.facebook.com/yakuquito/" class="enlace-footer">Facebook</a></li>
      <li><a href="https://www.instagram.com/yakuquito/?hl=es" class="enlace-footer">Instagram</a></li>
    </ul>
    <p>&copy; 2024 Clean Blue - Protegiendo Nuestros Océanos, Un Residuo a la Vez</p>
  </footer>
</body>
</html>
