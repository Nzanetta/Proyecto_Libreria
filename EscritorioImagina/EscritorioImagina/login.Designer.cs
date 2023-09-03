
namespace EscritorioImagina
{
    partial class login
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(login));
            this.tbUsuario = new MetroFramework.Controls.MetroTextBox();
            this.tbContrasena = new MetroFramework.Controls.MetroTextBox();
            this.metroLabel1 = new MetroFramework.Controls.MetroLabel();
            this.metroLabel2 = new MetroFramework.Controls.MetroLabel();
            this.btnEntrar = new MetroFramework.Controls.MetroButton();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // tbUsuario
            // 
            // 
            // 
            // 
            this.tbUsuario.CustomButton.Image = null;
            this.tbUsuario.CustomButton.Location = new System.Drawing.Point(173, 1);
            this.tbUsuario.CustomButton.Name = "";
            this.tbUsuario.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.tbUsuario.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.tbUsuario.CustomButton.TabIndex = 1;
            this.tbUsuario.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.tbUsuario.CustomButton.UseSelectable = true;
            this.tbUsuario.CustomButton.Visible = false;
            this.tbUsuario.Lines = new string[0];
            this.tbUsuario.Location = new System.Drawing.Point(67, 140);
            this.tbUsuario.MaxLength = 32767;
            this.tbUsuario.Name = "tbUsuario";
            this.tbUsuario.PasswordChar = '\0';
            this.tbUsuario.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.tbUsuario.SelectedText = "";
            this.tbUsuario.SelectionLength = 0;
            this.tbUsuario.SelectionStart = 0;
            this.tbUsuario.ShortcutsEnabled = true;
            this.tbUsuario.Size = new System.Drawing.Size(195, 23);
            this.tbUsuario.TabIndex = 0;
            this.tbUsuario.UseSelectable = true;
            this.tbUsuario.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.tbUsuario.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            this.tbUsuario.Click += new System.EventHandler(this.tbUsuario_Click);
            // 
            // tbContrasena
            // 
            // 
            // 
            // 
            this.tbContrasena.CustomButton.Image = null;
            this.tbContrasena.CustomButton.Location = new System.Drawing.Point(173, 1);
            this.tbContrasena.CustomButton.Name = "";
            this.tbContrasena.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.tbContrasena.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.tbContrasena.CustomButton.TabIndex = 1;
            this.tbContrasena.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.tbContrasena.CustomButton.UseSelectable = true;
            this.tbContrasena.CustomButton.Visible = false;
            this.tbContrasena.Lines = new string[0];
            this.tbContrasena.Location = new System.Drawing.Point(67, 188);
            this.tbContrasena.MaxLength = 32767;
            this.tbContrasena.Name = "tbContrasena";
            this.tbContrasena.PasswordChar = '*';
            this.tbContrasena.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.tbContrasena.SelectedText = "";
            this.tbContrasena.SelectionLength = 0;
            this.tbContrasena.SelectionStart = 0;
            this.tbContrasena.ShortcutsEnabled = true;
            this.tbContrasena.Size = new System.Drawing.Size(195, 23);
            this.tbContrasena.TabIndex = 1;
            this.tbContrasena.Theme = MetroFramework.MetroThemeStyle.Light;
            this.tbContrasena.UseSelectable = true;
            this.tbContrasena.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.tbContrasena.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // metroLabel1
            // 
            this.metroLabel1.AutoSize = true;
            this.metroLabel1.Location = new System.Drawing.Point(67, 166);
            this.metroLabel1.Name = "metroLabel1";
            this.metroLabel1.Size = new System.Drawing.Size(75, 19);
            this.metroLabel1.TabIndex = 2;
            this.metroLabel1.Text = "Contraseña";
            this.metroLabel1.Click += new System.EventHandler(this.metroLabel1_Click);
            // 
            // metroLabel2
            // 
            this.metroLabel2.AutoSize = true;
            this.metroLabel2.Location = new System.Drawing.Point(67, 118);
            this.metroLabel2.Name = "metroLabel2";
            this.metroLabel2.Size = new System.Drawing.Size(53, 19);
            this.metroLabel2.TabIndex = 3;
            this.metroLabel2.Text = "Usuario";
            // 
            // btnEntrar
            // 
            this.btnEntrar.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.btnEntrar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnEntrar.Location = new System.Drawing.Point(106, 217);
            this.btnEntrar.Name = "btnEntrar";
            this.btnEntrar.Size = new System.Drawing.Size(75, 23);
            this.btnEntrar.TabIndex = 4;
            this.btnEntrar.Text = "Entrar";
            this.btnEntrar.UseSelectable = true;
            this.btnEntrar.Click += new System.EventHandler(this.metroButton1_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(218, 15);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(123, 71);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 5;
            this.pictureBox1.TabStop = false;
            // 
            // login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.BackLocation = MetroFramework.Forms.BackLocation.TopRight;
            this.ClientSize = new System.Drawing.Size(370, 260);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.btnEntrar);
            this.Controls.Add(this.metroLabel2);
            this.Controls.Add(this.metroLabel1);
            this.Controls.Add(this.tbContrasena);
            this.Controls.Add(this.tbUsuario);
            this.Name = "login";
            this.Style = MetroFramework.MetroColorStyle.Brown;
            this.Text = "Iniciar Sesión";
            this.Theme = MetroFramework.MetroThemeStyle.Default;
            this.Load += new System.EventHandler(this.login_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MetroFramework.Controls.MetroTextBox tbUsuario;
        private MetroFramework.Controls.MetroTextBox tbContrasena;
        private MetroFramework.Controls.MetroLabel metroLabel1;
        private MetroFramework.Controls.MetroLabel metroLabel2;
        private MetroFramework.Controls.MetroButton btnEntrar;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}