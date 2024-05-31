<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*" session="true"%>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Clean Blue</title>
  <link rel="stylesheet" href="css/styles.css">
</head>
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


    <body>
        <article>
            <form action="categoria.jsp" method="post">
        
                <p style="font-size:33px;">
                    <center>
                        Búsqueda mediante categoría
                        
                        <% Producto producto=new Producto();
                           String combo=producto.mostrarCategoria();
                           out.print(combo);
                        %>
                        <button type="submit">ENVIAR</button>
                    </center>
                </p>
            
            </form>
        </article>
        
        
        
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
