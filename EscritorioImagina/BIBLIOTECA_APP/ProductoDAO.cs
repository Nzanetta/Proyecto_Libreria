using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.OracleClient;
using System.Data;

namespace BIBLIOTECA_APP
{
    public class ProductoDAO
    {
        OracleConnection ora =
            new OracleConnection("DATA SOURCE = xe; PASSWORD = LIBRERIA ; USER = LIBRERIA ;");

        public ProductoDAO()
        {

        }

        public bool agregarProducto(Producto p)
        {
            bool centinela = false;
            try
            {
                ora.Open();
                OracleCommand comando = new OracleCommand("SP_AGREGAR_PRODUCTO", ora);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("NOMBRE", OracleType.VarChar).Value = p.nombre;
                comando.Parameters.Add("DESCRIPCION", OracleType.VarChar).Value = p.descripcion;
                comando.Parameters.Add("PRECIO", OracleType.Number).Value = p.precio;
                comando.Parameters.Add("STOCK", OracleType.Number).Value = p.stock;
                comando.Parameters.Add("FOTO", OracleType.VarChar).Value = p.foto;

                if (comando.ExecuteNonQuery() > 0)
                {
                    centinela = true;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al agregar" + ex.Message);
            }
            finally
            {
                ora.Close();
            }
            return centinela;
        }
    }
}


