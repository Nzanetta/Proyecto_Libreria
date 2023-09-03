using BIBLIOTECA_APP;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EscritorioImagina
{
    public partial class servicio : Form
    {
        public servicio()
        {
            InitializeComponent();
            try
            {
                mgServicio.DataSource = new SERVICIODAO().listarServicios();
            }
            catch (Exception ex)
            {
                MetroFramework.MetroMessageBox.Show(ActiveForm, "Error al listar" + ex.Message);
            }
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void mgServicio_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
