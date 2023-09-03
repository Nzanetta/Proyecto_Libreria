    
package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {
    private Connection con;

    public UsuarioDAO() {
    }
    
    //Método para iniciar sesión
    public int Login(String user, String pass) throws SQLException{
        int tipo = 0;
        try {
            this.con = new Conexion.Conexion().obtenerConexion();
            String query = "SELECT tipo_usuario FROM usuario WHERE "
                    + "usuario = '"+user+"'  "
                    + "AND contrasena = '"+pass+"' ";
            CallableStatement cstmt = this.con.prepareCall(query);
            
            ResultSet rs = cstmt.executeQuery();
            
            while (rs.next()) {                
                tipo = rs.getInt("tipo_usuario");
            } 
        } catch (Exception e) {
            System.out.println("Error en Login "+e.getMessage());
        } finally {
            this.con.close();
        }
        return tipo;
    }
}
