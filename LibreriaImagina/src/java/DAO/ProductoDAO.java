package DAO;

import Clases.Producto;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

public class ProductoDAO {
    private Connection conexion;

    public ProductoDAO() {
        this.conexion = new Conexion.Conexion().obtenerConexion();
    }

    public Producto listarId(int id) {
        Producto p = new Producto();
        try {
            String llamada = "SELECT * FROM PRODUCTO WHERE id = ?";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            cstmt.setInt(1, id);
            ResultSet rs = cstmt.executeQuery();
            while (rs.next()) {
                p.setId(rs.getInt(1));
                p.setNombre(rs.getString(2));
                p.setDescripcion(rs.getString(3));
                p.setPrecio(rs.getInt(4));
                p.setStock(rs.getInt(5));
                p.setFoto(rs.getString(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    public List<Producto> listar() {
        List<Producto> productos = new ArrayList<>();
        try {
            String llamada = "SELECT * FROM PRODUCTO";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            ResultSet rs = cstmt.executeQuery();
            while (rs.next()) {
                Producto p = new Producto();
                p.setId(rs.getInt(1));
                p.setNombre(rs.getString(2));
                p.setDescripcion(rs.getString(3));
                p.setPrecio(rs.getInt(4));
                p.setStock(rs.getInt(5));
                p.setFoto(rs.getString(6));
                productos.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return productos;
    }
    
   
    public void listarImg(int id, HttpServletResponse response) {
        
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        
        try {
            outputStream = response.getOutputStream();
            String llamada = "SELECT * FROM PRODUCTO WHERE id="+id;
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            ResultSet rs = cstmt.executeQuery();
            if (rs.next()) {
                inputStream = rs.getBinaryStream("Foto");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i = 0;
            while ((i=bufferedInputStream.read()) !=-1) {
                bufferedOutputStream.write(i);
            }
        } catch (Exception e) {
        }
    }
}
