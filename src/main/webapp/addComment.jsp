<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.productos.datos.Conexion" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Añadir Comentario</title>
</head>
<body>
    <%
        String author = request.getParameter("author");
        String content = request.getParameter("content");
        int postId = Integer.parseInt(request.getParameter("post_id"));

        if (author != null && content != null && !author.isEmpty() && !content.isEmpty()) {
            Conexion conexion = new Conexion();
            Connection con = conexion.getConexion();
            String sql = "INSERT INTO comments (post_id, author, content, created_at) VALUES (?, ?, ?, CURRENT_TIMESTAMP)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, postId);
            ps.setString(2, author);
            ps.setString(3, content);
            ps.executeUpdate();
            ps.close();
            con.close();
        }
        response.sendRedirect("post.jsp?id=" + postId);
    %>
    
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
