
using System;

namespace EscritorioImagina
{
    partial class menu
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(menu));
            this.panelBoton = new System.Windows.Forms.Panel();
            this.menuAlphilia = new System.Windows.Forms.Button();
            this.menuListar = new System.Windows.Forms.Button();
            this.menuEliminar = new System.Windows.Forms.Button();
            this.menuAgregar = new System.Windows.Forms.Button();
            this.panelContenedor = new System.Windows.Forms.Panel();
            this.menuAgregaweb = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.panelBoton.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // panelBoton
            // 
            this.panelBoton.BackColor = System.Drawing.Color.Sienna;
            this.panelBoton.Controls.Add(this.menuAgregaweb);
            this.panelBoton.Controls.Add(this.menuAlphilia);
            this.panelBoton.Controls.Add(this.menuListar);
            this.panelBoton.Controls.Add(this.menuEliminar);
            this.panelBoton.Controls.Add(this.menuAgregar);
            this.panelBoton.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelBoton.Location = new System.Drawing.Point(20, 60);
            this.panelBoton.Name = "panelBoton";
            this.panelBoton.Size = new System.Drawing.Size(772, 33);
            this.panelBoton.TabIndex = 0;
            // 
            // menuAlphilia
            // 
            this.menuAlphilia.Cursor = System.Windows.Forms.Cursors.Hand;
            this.menuAlphilia.FlatAppearance.BorderSize = 0;
            this.menuAlphilia.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.menuAlphilia.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuAlphilia.ForeColor = System.Drawing.Color.White;
            this.menuAlphilia.Location = new System.Drawing.Point(435, 0);
            this.menuAlphilia.Name = "menuAlphilia";
            this.menuAlphilia.Size = new System.Drawing.Size(149, 33);
            this.menuAlphilia.TabIndex = 3;
            this.menuAlphilia.Text = "Alphilia";
            this.menuAlphilia.UseVisualStyleBackColor = true;
            this.menuAlphilia.Click += new System.EventHandler(this.menuAlphilia_Click);
            // 
            // menuListar
            // 
            this.menuListar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.menuListar.FlatAppearance.BorderSize = 0;
            this.menuListar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.menuListar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuListar.ForeColor = System.Drawing.Color.White;
            this.menuListar.Location = new System.Drawing.Point(292, 0);
            this.menuListar.Name = "menuListar";
            this.menuListar.Size = new System.Drawing.Size(149, 33);
            this.menuListar.TabIndex = 2;
            this.menuListar.Text = "Listar Libros";
            this.menuListar.UseVisualStyleBackColor = true;
            this.menuListar.Click += new System.EventHandler(this.menuListar_Click);
            // 
            // menuEliminar
            // 
            this.menuEliminar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.menuEliminar.FlatAppearance.BorderSize = 0;
            this.menuEliminar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.menuEliminar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuEliminar.ForeColor = System.Drawing.Color.White;
            this.menuEliminar.Location = new System.Drawing.Point(148, 0);
            this.menuEliminar.Name = "menuEliminar";
            this.menuEliminar.Size = new System.Drawing.Size(149, 33);
            this.menuEliminar.TabIndex = 1;
            this.menuEliminar.Text = "Eliminar Libro";
            this.menuEliminar.UseVisualStyleBackColor = true;
            this.menuEliminar.Click += new System.EventHandler(this.menuEliminar_Click);
            // 
            // menuAgregar
            // 
            this.menuAgregar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.menuAgregar.FlatAppearance.BorderSize = 0;
            this.menuAgregar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.menuAgregar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuAgregar.ForeColor = System.Drawing.Color.White;
            this.menuAgregar.Location = new System.Drawing.Point(10, 0);
            this.menuAgregar.Name = "menuAgregar";
            this.menuAgregar.Size = new System.Drawing.Size(132, 33);
            this.menuAgregar.TabIndex = 0;
            this.menuAgregar.Text = "Agregar Libro";
            this.menuAgregar.UseVisualStyleBackColor = true;
            this.menuAgregar.Click += new System.EventHandler(this.menuAgregar_Click);
            // 
            // panelContenedor
            // 
            this.panelContenedor.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelContenedor.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelContenedor.Location = new System.Drawing.Point(20, 93);
            this.panelContenedor.Name = "panelContenedor";
            this.panelContenedor.Size = new System.Drawing.Size(772, 264);
            this.panelContenedor.TabIndex = 1;
            this.panelContenedor.Paint += new System.Windows.Forms.PaintEventHandler(this.panelContenedor_Paint);
            // 
            // menuAgregaweb
            // 
            this.menuAgregaweb.Cursor = System.Windows.Forms.Cursors.Hand;
            this.menuAgregaweb.FlatAppearance.BorderSize = 0;
            this.menuAgregaweb.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.menuAgregaweb.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuAgregaweb.ForeColor = System.Drawing.Color.White;
            this.menuAgregaweb.Location = new System.Drawing.Point(565, 0);
            this.menuAgregaweb.Name = "menuAgregaweb";
            this.menuAgregaweb.Size = new System.Drawing.Size(149, 33);
            this.menuAgregaweb.TabIndex = 4;
            this.menuAgregaweb.Text = "Productos Web";
            this.menuAgregaweb.UseVisualStyleBackColor = true;
            this.menuAgregaweb.Click += new System.EventHandler(this.menuAgregaweb_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(91, 5);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(99, 56);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 2;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // menu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(812, 377);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.panelContenedor);
            this.Controls.Add(this.panelBoton);
            this.Name = "menu";
            this.Style = MetroFramework.MetroColorStyle.Brown;
            this.Text = "Menu";
            this.Load += new System.EventHandler(this.menu_Load);
            this.panelBoton.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        private void button1_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        #endregion

        private System.Windows.Forms.Panel panelBoton;
        private System.Windows.Forms.Button menuAlphilia;
        private System.Windows.Forms.Button menuListar;
        private System.Windows.Forms.Button menuEliminar;
        private System.Windows.Forms.Button menuAgregar;
        private System.Windows.Forms.Panel panelContenedor;
        private System.Windows.Forms.Button menuAgregaweb;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}