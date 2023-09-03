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
    public partial class listar : Form
    {
        public listar()
        {
            InitializeComponent();
            try
            {
                mgListar.DataSource = new LIBRODAO().listarLibros();
            }
            catch (Exception ex)
            {
                MetroFramework.MetroMessageBox.Show(ActiveForm, "Error al listar" + ex.Message);
            }
        }

        private void mgListar_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
