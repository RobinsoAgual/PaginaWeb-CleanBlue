<!DOCTYPE html>
<html lang="es">
<head>
 <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Usuario</title>
    <link rel="stylesheet" href="css/styles.css"  href="css/estilos.css" >
</head>
 <nav>
      <a href="index.jsp"><img style="float: left; max-width: 200px;" src="images/logo.jpeg" alt="Logo Clean Blue" title="Logo Clean Blue"></a>
        </nav>
  </header>
<body>
    <h2>Registro de Usuario</h2>
    <form action="registro2.jsp" method="post">
        <label for="id_usuario">ID de Usuario:</label>
        <input type="text" id="id_usuario" name="id_usuario" required><br><br>

        <label for="nombre_us">Nombre:</label>
        <input type="text" id="nombre_us" name="nombre_us" required><br><br>

        <label for="correo_us">Correo Electrónico:</label>
        <input type="email" id="correo_us" name="correo_us" required><br><br>

        <label for="contraseña">Contraseña:</label>
        <input type="password" id="contraseña" name="contraseña" required><br><br>

        <input type="submit" value="Registrar">
    </form>
    
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
        
        <p>&copy; 2024 Clean Blue - Protegiendo Nuestros Océanos, Un Residuo a la Vez</p>
    </footer>
    
</body>
</html>
