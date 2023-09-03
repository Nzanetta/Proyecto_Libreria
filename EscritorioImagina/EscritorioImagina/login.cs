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
    public partial class login : MetroFramework.Forms.MetroForm
    {
        public login()
        {
            InitializeComponent();
        }

        private void login_Load(object sender, EventArgs e)
        {

        }

        private void metroButton1_Click(object sender, EventArgs e)
        {
            try
            {
                String user = tbUsuario.Text;
                String pass = tbContrasena.Text;
                if(user.Equals("admin") && pass.Equals("admin"))
                {
                    menu m = new menu();
                    this.Hide();
                    m.ShowDialog();
                    this.Close();

                }

                else if (user.Equals("tecnico") && pass.Equals("tecnico"))
                {

                    
                    servicio servicioForm = new servicio();
                    this.Hide();
                    servicioForm.ShowDialog();
                    this.Close();
                }

                else
                {
                    MetroFramework.MetroMessageBox.Show(this,
                        "Credenciales incorrectas",
                        "Notificación",
                        MessageBoxButtons.OK,
                        MessageBoxIcon.Error);
                }

            }
            catch (Exception ex)
            {
                MetroFramework.MetroMessageBox.Show(this,
                        "Credenciales incorrectas"+ex.Message,
                        "Notificación",
                        MessageBoxButtons.OK,
                        MessageBoxIcon.Error);
            }
        }

        private void tbUsuario_Click(object sender, EventArgs e)
        {

        }

        private void metroLabel1_Click(object sender, EventArgs e)
        {

        }
    }
}
