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
    public partial class menu : MetroFramework.Forms.MetroForm
    {
        public menu()
        {
            InitializeComponent();
        }

        private void agregarFormulario(object formulario)
        {
            //Limpiar contenedor
            this.panelContenedor.Controls.Clear();
            //Capturar formularios
            Form f = formulario as Form;
            //Orderar los formularios
            f.TopLevel = false;
            f.Dock = DockStyle.Fill;
            this.panelContenedor.Controls.Add(f);
            this.panelContenedor.Tag = f;
            f.Show();
        }

        private void menuAgregar_Click(object sender, EventArgs e)
        {
            agregarFormulario(new agregar());
        }

        private void menuEliminar_Click(object sender, EventArgs e)
        {
            agregarFormulario(new eliminar());
        }

        private void menuListar_Click(object sender, EventArgs e)
        {
            agregarFormulario(new listar());
        }

        private void menuAlphilia_Click(object sender, EventArgs e)
        {
            agregarFormulario(new alphilia());
        }

        private void menuServicio_Click(object sender, EventArgs e)
        {
            agregarFormulario(new servicio());
        }

        private void menu_Load(object sender, EventArgs e)
        {

        }

        private void panelContenedor_Paint(object sender, PaintEventArgs e)
        {

        }

        private void menuAgregaweb_Click(object sender, EventArgs e)
        {
            agregarFormulario(new agregarWeb());
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
