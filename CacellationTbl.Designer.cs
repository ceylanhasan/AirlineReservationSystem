namespace AirlineReservationSystem
{
    partial class Cencellations
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
            label11 = new Label();
            label6 = new Label();
            textBox1 = new TextBox();
            label3 = new Label();
            label2 = new Label();
            dateTimePicker1 = new DateTimePicker();
            label1 = new Label();
            button3 = new Button();
            textBox2 = new TextBox();
            button1 = new Button();
            label4 = new Label();
            SuspendLayout();
            // 
            // label11
            // 
            label11.AutoSize = true;
            label11.BackColor = SystemColors.Control;
            label11.Font = new Font("Segoe Script", 13.8F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            label11.Location = new Point(300, 9);
            label11.Name = "label11";
            label11.Size = new Size(190, 38);
            label11.TabIndex = 90;
            label11.Text = "Varna Airport";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.BackColor = SystemColors.Control;
            label6.Font = new Font("Segoe UI", 12F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            label6.Location = new Point(384, 120);
            label6.Name = "label6";
            label6.Size = new Size(148, 28);
            label6.TabIndex = 83;
            label6.Text = "Flight Number";
            // 
            // textBox1
            // 
            textBox1.Location = new Point(152, 121);
            textBox1.Name = "textBox1";
            textBox1.Size = new Size(212, 27);
            textBox1.TabIndex = 74;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.BackColor = SystemColors.Control;
            label3.Font = new Font("Segoe UI", 12F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            label3.Location = new Point(44, 117);
            label3.Name = "label3";
            label3.Size = new Size(90, 28);
            label3.TabIndex = 73;
            label3.Text = "Flight Id";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.BackColor = SystemColors.Control;
            label2.Font = new Font("Segoe UI", 13.8F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            label2.Location = new Point(245, 47);
            label2.Name = "label2";
            label2.Size = new Size(220, 31);
            label2.TabIndex = 72;
            label2.Text = "Flight Cancellation";
            // 
            // dateTimePicker1
            // 
            dateTimePicker1.Font = new Font("Franklin Gothic Medium", 10.2F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            dateTimePicker1.Location = new Point(210, 193);
            dateTimePicker1.Name = "dateTimePicker1";
            dateTimePicker1.Size = new Size(229, 27);
            dateTimePicker1.TabIndex = 92;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.BackColor = SystemColors.Control;
            label1.Font = new Font("Segoe UI", 12F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            label1.Location = new Point(44, 191);
            label1.Name = "label1";
            label1.Size = new Size(141, 28);
            label1.TabIndex = 91;
            label1.Text = "Booking Date\t";
            // 
            // button3
            // 
            button3.Font = new Font("Segoe UI", 10.2F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            button3.Location = new Point(285, 265);
            button3.Name = "button3";
            button3.Size = new Size(180, 37);
            button3.TabIndex = 93;
            button3.Text = "Cancellation";
            button3.UseVisualStyleBackColor = true;
            button3.Click += button3_Click;
            // 
            // textBox2
            // 
            textBox2.Location = new Point(548, 121);
            textBox2.Name = "textBox2";
            textBox2.Size = new Size(156, 27);
            textBox2.TabIndex = 94;
            // 
            // button1
            // 
            button1.Font = new Font("Segoe UI", 10.2F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            button1.Location = new Point(647, 290);
            button1.Name = "button1";
            button1.Size = new Size(94, 29);
            button1.TabIndex = 95;
            button1.Text = "Back";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.BackColor = SystemColors.Control;
            label4.Font = new Font("Segoe UI", 9F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            label4.Location = new Point(739, 9);
            label4.Name = "label4";
            label4.Size = new Size(17, 20);
            label4.TabIndex = 96;
            label4.Text = "x";
            label4.Click += label4_Click;
            // 
            // Cencellations
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(768, 331);
            Controls.Add(label4);
            Controls.Add(button1);
            Controls.Add(textBox2);
            Controls.Add(button3);
            Controls.Add(dateTimePicker1);
            Controls.Add(label1);
            Controls.Add(label11);
            Controls.Add(label6);
            Controls.Add(textBox1);
            Controls.Add(label3);
            Controls.Add(label2);
            FormBorderStyle = FormBorderStyle.None;
            Name = "Cencellations";
            Text = "Cencellations";
            Load += Cencellations_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label11;
        private Label label6;
        private TextBox textBox1;
        private Label label3;
        private Label label2;
        private DateTimePicker dateTimePicker1;
        private Label label1;
        private Button button3;
        private TextBox textBox2;
        private Button button1;
        private Label label4;
    }
}