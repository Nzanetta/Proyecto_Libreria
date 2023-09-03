/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import Clases.Libro;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import oracle.jdbc.OracleTypes;

public class LibroDAO {
    private Connection conexion;

    public LibroDAO() {
    }
 
    //Agregar
    public boolean agregarLibro(Libro libro) throws SQLException{
        boolean centinela = false;
        try {
            //Abrir la conexión
            this.conexion = new Conexion.Conexion().obtenerConexion();
            //Llamada al procedimiento
            String llamada = "{ call SP_AGREGAR_LIBRO(?,?,?,?,?) }";
            //Creamos el Callablestament -> Permite ejecutar script en la BD
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            //Pasamos los atributos al procedimiento
            cstmt.setString(1, libro.getTitulo());
            cstmt.setString(2, libro.getAutor());
            cstmt.setInt(3, libro.getAnnio());
            cstmt.setInt(4, libro.getPrecio());
            cstmt.setInt(5, libro.getStock());
            
            //Ejecutamos y verificamos si funciona
            if(cstmt.executeUpdate()>0){
                centinela = true;
            }
            
        } catch (Exception e) {
            System.out.println("Error al guardar "+e.getMessage());
        } finally {
            this.conexion.close();
        }
        return centinela;
    }
    
    //Listar
    public List<Libro> listarLibros() throws SQLException{
        List<Libro> lista = new ArrayList<>();
        try {
            this.conexion = new Conexion.Conexion().obtenerConexion();
            String llamada = "{ call SP_LISTAR_LIBROS(?)}";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            
            cstmt.execute(); //Ejecutamos el procedimiento y llenamos el cursor
            
            ResultSet rs = (ResultSet) cstmt.getObject(1);
            while(rs.next()){
                Libro l = new Libro();
                l.setCodigo(rs.getInt("codigo"));
                l.setTitulo(rs.getString("titulo"));
                l.setAutor(rs.getString("autor"));
                l.setAnnio(rs.getInt("annio"));
                l.setPrecio(rs.getInt("precio"));
                l.setStock(rs.getInt("stock"));
                
                lista.add(l); //agregamos los libros que enconramos en el rs
            }
            
        } catch (Exception e) {
            System.out.println("Error al listar "+e.getMessage());
        } finally {
            this.conexion.close();
        }
        return lista;
    }
    
    //Eliminar
    public boolean eliminarLibro(int codigo) throws SQLException{
        boolean centinela = false;
        try {
            this.conexion = new Conexion.Conexion().obtenerConexion();
            String query = "DELETE FROM LIBRO WHERE CODIGO = "+codigo;
            CallableStatement cstmt = this.conexion.prepareCall(query);
            
            if(cstmt.executeUpdate()>0){
                centinela = true;
            }
            
        } catch (Exception e) {
            System.out.println("Error al eliminar "+e.getMessage());
        } finally {
            this.conexion.close();
        }
        return centinela;
    }
    

    //Actualizar
    public boolean actualizarLibro(Libro lib) throws SQLException{
        boolean centinela = false;
        try {
            this.conexion = new Conexion.Conexion().obtenerConexion();
            String query = "UPDATE LIBRO SET TITULO=?,AUTOR=?,ANNIO=?,PRECIO=?"
                    + ",STOCK=? WHERE CODIGO=?";
            CallableStatement cstmt = this.conexion.prepareCall(query);
            cstmt.setString(1, lib.getTitulo());
            cstmt.setString(2, lib.getAutor());
            cstmt.setInt(3, lib.getAnnio());
            cstmt.setInt(4, lib.getPrecio());
            cstmt.setInt(5, lib.getStock());
            cstmt.setInt(6, lib.getCodigo());
            
            if(cstmt.executeUpdate()>0){
                centinela=true;
            }
            
        } catch (Exception e) {
            System.out.println("Error al actualizar "+e.getMessage());
        } finally {
            this.conexion.close();
        }
        return centinela;
    }
    
    //Listar
    public Libro buscarLibro(int codigo) throws SQLException{
        Libro l = new Libro();
        try {
            this.conexion = new Conexion.Conexion().obtenerConexion();
            String llamada = "select * from LIBRO where codigo = "+codigo;
            CallableStatement cstmt = this.conexion.prepareCall(llamada);

            ResultSet rs = cstmt.executeQuery();
            while(rs.next()){
                l.setCodigo(rs.getInt("codigo"));
                l.setTitulo(rs.getString("titulo"));
                l.setAutor(rs.getString("autor"));
                l.setAnnio(rs.getInt("Annio"));
                l.setPrecio(rs.getInt("precio"));
                l.setStock(rs.getInt("stock"));
            }
            
        } catch (Exception e) {
            System.out.println("Error al buscar "+e.getMessage());
        } finally {
            this.conexion.close();
        }
        return l;
    }
    
}
