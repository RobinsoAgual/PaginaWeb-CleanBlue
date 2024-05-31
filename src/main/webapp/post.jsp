<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="com.productos.datos.Conexion" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clean Blue - Ver Post</title>
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
            <%
                int postId = Integer.parseInt(request.getParameter("id"));
                Conexion conexion = new Conexion();
                Connection con = conexion.getConexion();
                String sql = "SELECT * FROM posts WHERE id = ?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, postId);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
            %>
                <h2><%= rs.getString("title") %></h2>
                <p><%= rs.getString("content") %></p>
                <p><small>Autor: <%= rs.getString("author") %></small></p>
                <p><small>Publicado el: <%= rs.getTimestamp("created_at") %></small></p>
            <%
                } else {
            %>
                <p>Post no encontrado.</p>
            <%
                }
                rs.close();
                ps.close();

                // Obtener comentarios
                String sqlComments = "SELECT * FROM comments WHERE post_id = ? ORDER BY created_at ASC";
                PreparedStatement psComments = con.prepareStatement(sqlComments);
                psComments.setInt(1, postId);
                ResultSet rsComments = psComments.executeQuery();
            %>
            <h3>Comentarios</h3>
            <div class="comments">
            <%
                while (rsComments.next()) {
            %>
                <div class="comment">
                    <p><%= rsComments.getString("content") %></p>
                    <p><small>Autor: <%= rsComments.getString("author") %></small></p>
                    <p><small>Publicado el: <%= rsComments.getTimestamp("created_at") %></small></p>
                </div>
            <%
                }
                rsComments.close();
                psComments.close();
                con.close();
            %>
            </div>

            <div class="add-comment">
                <h3>Añadir Comentario</h3>
                <form action="addComment.jsp" method="post">
                    <input type="hidden" name="post_id" value="<%= postId %>">
                    <div class="input-group">
                        <label for="author">Nombre:</label>
                        <input type="text" id="author" name="author" required>
                    </div>
                    <div class="input-group">
                        <label for="content">Comentario:</label>
                        <textarea id="content" name="content" required></textarea>
                    </div>
                    <button type="submit">Añadir Comentario</button>
                </form>
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
