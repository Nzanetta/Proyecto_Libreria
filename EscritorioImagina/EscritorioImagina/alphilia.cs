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
using EscritorioImagina.BODEGA;

namespace EscritorioImagina
{
    public partial class alphilia : Form
    {
        public alphilia()
        {
            InitializeComponent();
            try
            {
                //Cliente WS BODEGA ALPHILIA
                BODEGA.BODEGAClient cliente = new BODEGA.BODEGAClient();

                mgAlphilia.DataSource = cliente.listar();
            }
            catch (Exception ex)
            {
                MetroFramework.MetroMessageBox.Show(ActiveForm, "Error al listar" + ex.Message);
            }
        }


        private void mgAlphilia_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }
    }
}

