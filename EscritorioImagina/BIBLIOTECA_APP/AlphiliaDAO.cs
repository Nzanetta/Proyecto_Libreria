using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.OracleClient;
using System.Data;

namespace BIBLIOTECA_APP
{
    public class AlphiliaDAO
    {
        OracleConnection ora =
            new OracleConnection("DATA SOURCE = xe; PASSWORD = BODEGA ; USER = BODEGA ;");



        public AlphiliaDAO()
        {

        }
        public List<Alphilia> listar()
        {
            List<Alphilia> listado = new List<Alphilia>();
            try
            {
                ora.Open();
                OracleCommand comando = new OracleCommand("SP_LISTAR_ALPHILIA", ora);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("alphilias", OracleType.Cursor).Direction = ParameterDirection.Output;

                OracleDataReader dr = comando.ExecuteReader();

                while (dr.Read())
                {
                    Alphilia p = new Alphilia()
                    {
                        id = dr.GetInt32(0),
                        nombre = dr.GetString(1),
                        descripcion = dr.GetString(2),
                        precio = dr.GetInt32(3),
                        stock = dr.GetInt32(4),

                    };
                    listado.Add(p);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al listar" + ex.Message);
            }
            finally
            {
                ora.Close();
            }
            return listado;
        }

    }
}