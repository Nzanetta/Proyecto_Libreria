using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using BIBLIOTECA_APP;

namespace EscritorioImagina
{
    public partial class agregarWeb : Form
    {
        public agregarWeb()
        {
            InitializeComponent();
        }

        private void metroLabel1_Click(object sender, EventArgs e)
        {

        }

        private void metroLabel2_Click(object sender, EventArgs e)
        {

        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                Producto producto = new Producto()
                {
                    id = 0,
                    nombre = txtNombre.Text,
                    descripcion = txtDesc.Text,
                    precio = int.Parse(txtPrecio.Value.ToString()),
                    stock = int.Parse(txtStock.Value.ToString()),
                    foto = txtFoto.Text,
                };
                if (new ProductoDAO().agregarProducto(producto))
                {
                    MetroFramework.MetroMessageBox.Show(ActiveForm, "Libro Agregado Correctamente a la Web",
                        "Mensaje", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MetroFramework.MetroMessageBox.Show(ActiveForm, "No fue posible agregar el libro a la web",
                        "Mensaje", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception ex)
            {
                MetroFramework.MetroMessageBox.Show(ActiveForm, "Error al agregar a la web" + ex.Message);
            }
        }

        private void txtDesc_Click(object sender, EventArgs e)
        {

        }

        private void txtPrecio_ValueChanged(object sender, EventArgs e)
        {

        }
    }
}
