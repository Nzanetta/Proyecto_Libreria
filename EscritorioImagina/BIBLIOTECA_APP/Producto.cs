using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BIBLIOTECA_APP
{
    public class Producto
    {
        
        //atributos
        public int id { get; set; }
        public String nombre { get; set; }
        public String descripcion { get; set; }
        public int precio { get; set; }
        public int stock { get; set; }
        public String foto { get; set; }

        public Producto()
        {

        }
    }
}
