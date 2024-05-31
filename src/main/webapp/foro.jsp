<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clean Blue - Foro</title>
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
                <li><a href="login.jsp">Login</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <div class="container">
            <h2>Foro</h2>
            
            <div class="forum-section">
                <h3>Introducción y Normas del Foro</h3>
                <ul>
                    <li><a href="post.jsp?id=1">Bienvenida al Foro</a></li>
                    <li><a href="post.jsp?id=2">Normas y Directrices</a></li>
                    <li><a href="post.jsp?id=3">Presentaciones de Nuevos Miembros</a></li>
                </ul>
            </div>

            <div class="forum-section">
                <h3>Noticias y Actualizaciones</h3>
                <ul>
                    <li><a href="post.jsp?id=4">Noticias Recientes</a></li>
                    <li><a href="post.jsp?id=5">Actualizaciones de Proyectos</a></li>
                    <li><a href="post.jsp?id=6">Eventos Próximos</a></li>
                </ul>
            </div>

            <!-- Más secciones del foro -->

            <div class="forum-section">
                <h3>Sugerencias y Comentarios</h3>
                <ul>
                    <li><a href="post.jsp?id=7">Proporcionar Retroalimentación</a></li>
                    <li><a href="post.jsp?id=8">Sugerencias para el Foro</a></li>
                    <li><a href="post.jsp?id=9">Nuevas Iniciativas</a></li>
                </ul>
            </div>
        </div>
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
