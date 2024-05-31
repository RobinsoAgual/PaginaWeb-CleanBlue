package com.productos.negocio;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.productos.datos.*;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.FileInputStream;

public class Producto {
	private int id_pr;
	private int id_cat;
	private String nombre;
	private String fecha;
	private String hora;
	private int cantidad_pr;
	private double precio_pr;
	private String aux;

	public String getAux() {
		return aux;
	}

	public void setAux(String aux) {
		this.aux = aux;
	}

	public Producto() {
		// TODO Auto-generated constructor stub
	}

	    // Método para consultar todos los productos con información específica
	public String consultarTodo() {
        String sql = "SELECT id_pr, id_cat, nombre_pr, fecha_pr, hora_pr FROM tb_producto ORDER BY id_pr";
        Conexion con = new Conexion();
        StringBuilder tabla = new StringBuilder(
                "<table border='5' bgcolor='white' valign='center' caption='tabladeautos' style='font-size: 20px; border-collapse: collapse; width: 50%;'>"
                        + "<th>ID</th><th>Categoría</th><th>Descripción</th><th>Lugar</th><th>Fecha</th>");
        ResultSet rs = con.Consulta(sql);
        try {
            while (rs.next()) {
                tabla.append("<tr><td>").append(rs.getInt("id_pr")).append("</td>")
                        .append("<td>").append(rs.getInt("id_cat")).append("</td>")
                        .append("<td>").append(rs.getString("nombre_pr")).append("</td>")
                        .append("<td>").append(rs.getString("fecha_pr")).append("</td>")
                        .append("<td>").append(rs.getString("hora_pr")).append("</td>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
        tabla.append("</table>");
        return tabla.toString();
    }

	

	
	public boolean vrfclave(String clave,String claver,String claven,String clavenr) {
		boolean f=false;
		String sql="SELECT clave_us FROM tb_usuario where clave_us='"+clave+"'";
		Conexion con=new Conexion();
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next()) {
				try {
					if(clave.equals(claver)&& clave.equals(rs.getString(1)) ) {
						if(claven.equals(clavenr)) {
							String sql1="update tb_usuario set clave_us='"+claven+"' where clave_us='"+clave+"'";
							Conexion con1=new Conexion();
							con1.Ejecutar(sql1);
							f=true;
						}else {
							f=false;
						}
					}else {
						f=false;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return f;
		
	}
	public String consultarcategoria(int cat) {
        String sql = "SELECT id_pr, id_cat, nombre_pr, fecha_pr, hora_pr FROM tb_producto WHERE id_cat = " + cat;
        Conexion con = new Conexion();
        StringBuilder tabla = new StringBuilder(
                "<table border='5' bgcolor='white' valign='center' caption='tabladeautos' style='font-size: 20px; border-collapse: collapse; width: 50%;'>"
                        + "<th>ID</th><th>Categoría</th><th>Descripción</th><th>Lugar</th><th>fecha</th>");
        ResultSet rs = con.Consulta(sql);
        try {
            while (rs.next()) {
                tabla.append("<tr><td>").append(rs.getInt("id_pr")).append("</td>")
                        .append("<td>").append(rs.getInt("id_cat")).append("</td>")
                        .append("<td>").append(rs.getString("nombre_pr")).append("</td>")
                        .append("<td>").append(rs.getString("fecha_pr")).append("</td>")
                        .append("<td>").append(rs.getString("hora_pr")).append("</td>")
                        .append("</tr>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
        tabla.append("</table>");
        return tabla.toString();
    }
	public String mostrarCategoria() {
        StringBuilder combo = new StringBuilder("<select name='cmbCategoria'>");
        String sql = "SELECT * FROM tb_categoria";
        Conexion con = new Conexion();
        ResultSet rs = con.Consulta(sql);
        try {
            while (rs.next()) {
                combo.append("<option value='").append(rs.getInt(1)).append("'>")
                        .append(rs.getString(2)).append("</option>");
            }
            combo.append("</select>");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
        return combo.toString();
    }
	
	public String ingresarEvento(int id, int cat, String nombre, String fecha, String hora) {
	    Conexion con = new Conexion();
	    String sql = "INSERT INTO tb_producto (id_pr, id_cat, nombre_pr, fecha_pr, hora_pr) VALUES (?, ?, ?, ?, ?)";
	    
	    try (Connection connection = con.getConexion();
	         PreparedStatement pstmt = connection.prepareStatement(sql)) {
	        
	        pstmt.setInt(1, id);
	        pstmt.setInt(2, cat);
	        pstmt.setString(3, nombre);
	        pstmt.setString(4, fecha);
	        pstmt.setString(5, hora);
	        
	        int filasAfectadas = pstmt.executeUpdate();
	        if (filasAfectadas > 0) {
	            return "Evento ingresado exitosamente.";
	        } else {
	            return "Error al ingresar el evento.";
	        }
	    } catch (SQLException e) {
	        return "Error de SQL: " + e.getMessage();
	    }
	}




	public int getId_pr() {
		return id_pr;
	}

	public void setId_pr(int id_pr) {
		this.id_pr = id_pr;
	}

	public int getId_cat() {
		return id_cat;
	}

	public void setId_cat(int id_cat) {
		this.id_cat = id_cat;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	
	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}
	
	
	

	public int getCantidad_pr() {
		return cantidad_pr;
	}

	public void setCantidad_pr(int cantidad_pr) {
		this.cantidad_pr = cantidad_pr;
	}

	public double getPrecio_pr() {
		return precio_pr;
	}

	public void setPrecio_pr(double precio_pr) {
		this.precio_pr = precio_pr;
	}
	 public String ingresarUsuario(int id_usuario, String nombre, String correo, String contraseña) {
	        Conexion con = new Conexion();
	        String sql = "INSERT INTO public.tb_usuario(\r\n"
	        		+ "	id_usuario, nombre_us, correo_us, \"contraseña\")\r\n"
	        		+ "	VALUES (?, ?, ?, ?);";
	        
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




}




