package DAO;

import Clases.Servicio;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;



public class ServicioDAO {
    //variable conexión para abrir y cerrar
    private Connection conexion;

    public ServicioDAO() {
    }
    
    //Agregar
    public boolean agregarServicio(Servicio s) throws SQLException{
        boolean centinela = false;
        try {
            //Abrir la conexión
            this.conexion = new Conexion.Conexion().obtenerConexion();
            //creamos la llamada al procedimiento o query
            String llamada = "{ call SP_AGREGAR_SERVICIO(?,?,?,?) }";
            //Creamos un objeto que permite ejecutar comandos en la bd
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            //entregamos los atributos del objeto al callable
            cstmt.setString(1, s.getNombre());
            cstmt.setInt(2, s.getTelefono());
            cstmt.setString(3, s.getServicio());
            cstmt.setString(4, s.getComentario());
            //ejecutamos y verificamos
            if(cstmt.executeUpdate()>0){
                centinela = true;
            }
        } catch (Exception e) {
            System.out.println("Error al guardar "+e.getMessage());
        } finally {
            //cerrar conexión
            this.conexion.close();
        }
        return centinela;
    }}