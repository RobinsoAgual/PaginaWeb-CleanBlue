<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.productos.negocio.Producto" %>
<!DOCTYPE html>
<html>
    <title>BUSQUEDA POR CATEGORIA</title>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Clean Blue</title>
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
        <li><a href="busqueda1.jsp">Eventos</a></li>
        <li><a href="login.jsp">Login</a></li>
      </ul>
    </nav>
  </header>
   <br>
    <br>
     <br>
    <center>
        <form action="categoria.jsp" method="post">
            <p style="font-size:33px;">
                <center>
                    B�squeda mediante categor�a
                    <% 
                        Producto producto = new Producto();
                        String combo = producto.mostrarCategoria();
                        out.print(combo);
                    %>
                    <button type="submit">ENVIAR</button>
                </center>
            </p>
        </form>

        <%
            // Obtener el par�metro "cmbCategoria" del formulario enviado
            String bcategoriaParam = request.getParameter("cmbCategoria");

            // Verificar si el par�metro no es nulo
            if (bcategoriaParam != null) {
                // Convertir el valor del par�metro a entero
                int cat = Integer.parseInt(bcategoriaParam);

                // Realizar la consulta de productos seg�n la categor�a seleccionada
                String tabla = producto.consultarcategoria(cat);

                // Verificar si se obtuvieron resultados de la consulta
                if (!tabla.isEmpty()) {
                    // Mostrar la tabla de productos
                    out.print(tabla);
                } else {
                    // Mostrar un mensaje indicando que no hay productos disponibles para la categor�a seleccionada
                    out.print("<p>No hay productos disponibles para esta categor�a.</p>");
                }
            }
        %>
    </center>
     <br>
    <br>
     <br>
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
        
        <p>&copy; 2024 Clean Blue - Protegiendo Nuestros Oc�anos, Un Residuo a la Vez</p>
    </footer>
</body>    
</html>
