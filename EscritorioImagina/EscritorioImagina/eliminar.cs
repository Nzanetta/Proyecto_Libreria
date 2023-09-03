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
    public partial class eliminar : Form
    {
        public eliminar()
        {
            InitializeComponent();
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                int codigo = int.Parse(txtCodigo.Value.ToString());
                if (new LIBRODAO().eliminarLibro(codigo))
                {
                    MetroFramework.MetroMessageBox.Show(ActiveForm, "Libro eliminado correctamente",
                        "Mensaje", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MetroFramework.MetroMessageBox.Show(ActiveForm, "No fue posible eliminar el libro",
                        "Mensaje", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception ex)
            {
                MetroFramework.MetroMessageBox.Show(ActiveForm, "Error al agregar" + ex.Message);
            }
        }
    }
}
