package com.productos.negocio;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.productos.datos.Conexion;

public class GestorUsuarios {
	private int id_usuario;
	private String nombre;
	private String correo;
	private String contraseña;
	
	  private Conexion conexion;

	    public GestorUsuarios(Conexion conexion) {
	        this.conexion = conexion;
	    }
	
    public int getId_usuario() {
		return id_usuario;
	}

	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getContraseña() {
		return contraseña;
	}

	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}

	public GestorUsuarios() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String ingresarUsuario(int id_usuario, String nombre, String correo, String contraseña) {
        Conexion con = new Conexion();
        String sql = "INSERT INTO tb_usuario (id_usuario, nombre_us, correo_us, contraseña) VALUES (?, ?, ?, ?)";
        
        try (Connection connection = con.getConexion();
             PreparedStatement pstmt = connection.prepareStatement(sql)) {
            
            pstmt.setInt(1, id_usuario);
            pstmt.setString(2, nombre);
            pstmt.setString(3, correo);
            pstmt.setString(4, contraseña);
            
            int filasAfectadas = pstmt.executeUpdate();
            if (filasAfectadas > 0) {
                return "Usuario registrado exitosamente.";
            } else {
                return "Error al registrar el usuario.";
            }
        } catch (SQLException e) {
            return "Error de SQL: " + e.getMessage();
        }
    }
    
	 // Método para verificar usuario

    private String clave;

    public String getClave() {
        return clave;
    }

    public boolean verificarUsuario(String nombre_us, String clave) {
        boolean respuesta = false;
        String sql = "SELECT * FROM tb_usuario WHERE nombre_us = ? AND contraseña = ?";
        try (Connection con = conexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, nombre_us);
            ps.setString(2, clave);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                respuesta = true;
                this.setId_usuario(rs.getInt("id_usuario"));
                this.setNombre(rs.getString("nombre_us"));
                this.setCorreo(rs.getString("correo_us"));
                this.setContraseña(rs.getString("contraseña"));
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return respuesta;
    }
	          
}
