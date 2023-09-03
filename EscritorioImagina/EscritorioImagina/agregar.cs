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
    public partial class agregar : Form
    {
        public agregar()
        {
            InitializeComponent();
        }

        private void agregar_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void metroLabel1_Click(object sender, EventArgs e)
        {

        }

        private void metroLabel5_Click(object sender, EventArgs e)
        {

        }

        private void metroButton1_Click(object sender, EventArgs e)
        {
            try
            {
                LIBRO lib = new LIBRO()
                {
                    Codigo = 0,
                    Titulo = txtTitulo.Text,
                    Autor = txtAutor.Text,
                    Annio = int.Parse(txtAnio.Value.ToString()),
                    Precio = int.Parse(txtAnio.Value.ToString()),
                    Stock = int.Parse(txtStock.Value.ToString()),
                };
                if (new LIBRODAO().agregarLibro(lib))
                {
                    MetroFramework.MetroMessageBox.Show(ActiveForm, "Libro Agregado Correctamente",
                        "Mensaje", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MetroFramework.MetroMessageBox.Show(ActiveForm, "No fue posible agregar el libro",
                        "Mensaje", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception ex)
            {
                MetroFramework.MetroMessageBox.Show(ActiveForm, "Error al agregar" + ex.Message);
            }

        }

        private void txtTitulo_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void txtAutor_Click(object sender, EventArgs e)
        {

        }

        private void metroLabel2_Click(object sender, EventArgs e)
        {

        }

        private void metroLabel3_Click(object sender, EventArgs e)
        {

        }

        private void metroLabel4_Click(object sender, EventArgs e)
        {

        }

        private void metroLabel5_Click_1(object sender, EventArgs e)
        {

        }

        private void metroLabel6_Click(object sender, EventArgs e)
        {

        }

        private void txtAnio_ValueChanged(object sender, EventArgs e)
        {

        }

        private void txtPrecio_ValueChanged(object sender, EventArgs e)
        {

        }

        private void txtStock_ValueChanged(object sender, EventArgs e)
        {

        }

        private void metroLabel3_Click_1(object sender, EventArgs e)
        {

        }

        private void metroLabel1_Click_1(object sender, EventArgs e)
        {

        }

        private void label1_Click_2(object sender, EventArgs e)
        {

        }
    }
}
