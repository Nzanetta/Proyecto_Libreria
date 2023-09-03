using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.OracleClient;
using System.Data;

namespace BIBLIOTECA_APP
{
    public class SERVICIODAO
    {
        OracleConnection ora =
            new OracleConnection("DATA SOURCE = xe; PASSWORD = LIBRERIA ; USER = LIBRERIA ;");

        public SERVICIODAO()
        {

        }
    

    public List<SERVICIO> listarServicios()
    {
            List<SERVICIO> listado = new List<SERVICIO>();
            try
            {
                ora.Open();
                OracleCommand comando = new OracleCommand("SP_LISTAR_SERVICIOS", ora);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("servicios", OracleType.Cursor).Direction = ParameterDirection.Output;

                OracleDataReader dr = comando.ExecuteReader();

                while (dr.Read())
                {
                    SERVICIO s = new SERVICIO()
                    {
                        Codigo = dr.GetInt32(0),
                        Nombre = dr.GetString(1),
                        Telefono = dr.GetInt32(2),
                        Servicio = dr.GetString(3),
                        Comentario = dr.GetString(4),
                    };
                    listado.Add(s);
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


