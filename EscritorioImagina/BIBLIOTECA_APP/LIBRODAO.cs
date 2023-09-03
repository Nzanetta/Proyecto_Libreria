using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.OracleClient;
using System.Data;

namespace BIBLIOTECA_APP
{
    public class LIBRODAO
    {
        OracleConnection ora =
            new OracleConnection("DATA SOURCE = xe; PASSWORD = LIBRERIA ; USER = LIBRERIA ;");

        public LIBRODAO()
        {

        }

        public bool agregarLibro(LIBRO lib)
        {
            bool centinela = false;
            try
            {
                ora.Open();
                OracleCommand comando = new OracleCommand("SP_AGREGAR_LIBRO", ora);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("TITULO", OracleType.VarChar).Value = lib.Titulo;
                comando.Parameters.Add("AUTOR", OracleType.VarChar).Value = lib.Autor;
                comando.Parameters.Add("ANNIO", OracleType.Number).Value = lib.Annio;
                comando.Parameters.Add("PRECIO", OracleType.Number).Value = lib.Precio;
                comando.Parameters.Add("STOCK", OracleType.Number).Value = lib.Stock;

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
        public bool eliminarLibro(int Codigo)
        {
            bool centinela = false;
            try
            {
                ora.Open();
                OracleCommand comando =
                    new OracleCommand("DELETE FROM LIBRO WHERE CODIGO = " + Codigo, ora);
                if (comando.ExecuteNonQuery() > 0)
                {
                    centinela = true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al eliminar" + ex.Message);
            }
            finally
            {
                ora.Close();
            }
            return centinela;
        }

        public List<LIBRO> listarLibros()
        {
            List<LIBRO> listado = new List<LIBRO>();
            try
            {
                ora.Open();
                OracleCommand comando = new OracleCommand("SP_LISTAR_LIBROS", ora);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("libros", OracleType.Cursor).Direction = ParameterDirection.Output;

                OracleDataReader dr = comando.ExecuteReader();

                while (dr.Read())
                {
                    LIBRO lib = new LIBRO()
                    {
                        Codigo = dr.GetInt32(0),
                        Titulo = dr.GetString(1),
                        Autor = dr.GetString(2),
                        Annio = dr.GetInt32(3),
                        Precio = dr.GetInt32(4),
                        Stock = dr.GetInt32(5),
                    };
                    listado.Add(lib);
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
