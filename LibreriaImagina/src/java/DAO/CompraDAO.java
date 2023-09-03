package DAO;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CompraDAO {
    private Conexion conexion; // Objeto de la clase Conexion

    public CompraDAO() {
        conexion = new Conexion(); // Inicializar el objeto de la clase Conexion
    }

    public void guardarCompra(String idTransaccion, String status, String email, String idCliente, int total) {
        String insertCompraSQL = "INSERT INTO compra (id_transaccion, status, email, id_cliente, total) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = conexion.obtenerConexion();
             PreparedStatement preparedStatement = connection.prepareStatement(insertCompraSQL)) {
            preparedStatement.setString(1, idTransaccion);
            preparedStatement.setString(2, status);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, idCliente);
            preparedStatement.setInt(5, total);

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void guardarDetalleCompra(int idCompra, int idProducto, String nombre, int precio, int cantidad) {
        String insertDetalleCompraSQL = "INSERT INTO detalle_compra (id_compra, id_producto, nombre, precio, cantidad) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = conexion.obtenerConexion();
             PreparedStatement preparedStatement = connection.prepareStatement(insertDetalleCompraSQL)) {
            preparedStatement.setInt(1, idCompra);
            preparedStatement.setInt(2, idProducto);
            preparedStatement.setString(3, nombre);
            preparedStatement.setInt(4, precio);
            preparedStatement.setInt(5, cantidad);

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
