<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.seguridad.*, com.productos.negocio.*"%>
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
        <li><a href="eventos.jsp">Eventos</a></li>
        <li><a href="login.jsp">Login</a></li>
      </ul>
    </nav>
    <h1>NUEVO EVENTO-CAMPAÑA-CONFERENCIA</h1>
    <nav>
    </nav>
    <br>
    <br>
    <br>
    <hr>
  </header>

  <main>
    <article>
      <form action="registro1.jsp" method="post">
        <p style="font-size:33px;">
          <table style="margin: 0 auto;">
            <tr>
              <td>Id Evento-Categoria-Conferencia</td>
              <td><input type="text" name="id" required="required"/></td>
            </tr>
            <tr>
              <td>Tipo:</td>
              <td>
                <%
                  Producto producto = new Producto();
                  out.print(producto.mostrarCategoria());
                %>
              </td>
            </tr>
            <tr>
              <td>Nombre:</td>
              <td><input type="text" name="nombre" required/></td>
            </tr>
            <tr>
              <td>Lugar:</td>
              <td><input type="text" name="fecha" required/></td>
            </tr>
            <tr>
              <td>Fecha:</td>
              <td><input type="text" name="hora" required/></td>
            </tr>
            <tr>
              <td colspan="2">
                <button type="submit">INGRESAR</button>
              </td>
            </tr>
          </table>
          <h3>*Campo obligatorio</h3>
        </p>
      </form>
    </article>
  </main>

  <footer>
    <ul>
      <li><a href="https://www.facebook.com/yakuquito/" class="enlace-footer">Facebook</a></li>
      <li><a href="https://www.instagram.com/yakuquito/?hl=es" class="enlace-footer">Instagram</a></li>
    </ul>
    <p>&copy; 2024 Clean Blue - Protegiendo Nuestros Océanos, Un Residuo a la Vez</p>
  </footer>
</body>
</html>
