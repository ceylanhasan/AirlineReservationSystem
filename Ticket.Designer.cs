namespace AirlineReservationSystem
{
    partial class Ticket
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
            label5 = new Label();
            textBox1 = new TextBox();
            label2 = new Label();
            label11 = new Label();
            label4 = new Label();
            richTextBox1 = new RichTextBox();
            button3 = new Button();
            button1 = new Button();
            richTextBox2 = new RichTextBox();
            label1 = new Label();
            textBox2 = new TextBox();
            button2 = new Button();
            SuspendLayout();
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.BackColor = SystemColors.Control;
            label5.Font = new Font("Segoe UI", 12F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            label5.Location = new Point(66, 101);
            label5.Name = "label5";
            label5.Size = new Size(92, 28);
            label5.TabIndex = 56;
            label5.Text = "Ticket Id";
            // 
            // textBox1
            // 
            textBox1.Location = new Point(179, 105);
            textBox1.Name = "textBox1";
            textBox1.Size = new Size(212, 27);
            textBox1.TabIndex = 55;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.BackColor = SystemColors.Control;
            label2.Font = new Font("Segoe UI", 13.8F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            label2.Location = new Point(195, 47);
            label2.Name = "label2";
            label2.Size = new Size(339, 31);
            label2.TabIndex = 53;
            label2.Text = "Ticket  and Flight Information";
            // 
            // label11
            // 
            label11.AutoSize = true;
            label11.BackColor = SystemColors.Control;
            label11.Font = new Font("Segoe Script", 13.8F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            label11.Location = new Point(320, 9);
            label11.Name = "label11";
            label11.Size = new Size(190, 38);
            label11.TabIndex = 71;
            label11.Text = "Varna Airport";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.BackColor = SystemColors.Control;
            label4.Font = new Font("Segoe UI", 10.2F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            label4.Location = new Point(707, 18);
            label4.Name = "label4";
            label4.Size = new Size(19, 23);
            label4.TabIndex = 94;
            label4.Text = "x";
            label4.Click += label4_Click;
            // 
            // richTextBox1
            // 
            richTextBox1.Location = new Point(54, 156);
            richTextBox1.Name = "richTextBox1";
            richTextBox1.Size = new Size(574, 153);
            richTextBox1.TabIndex = 95;
            richTextBox1.Text = "";
            // 
            // button3
            // 
            button3.Font = new Font("Segoe UI", 10.2F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            button3.Location = new Point(448, 95);
            button3.Name = "button3";
            button3.Size = new Size(180, 37);
            button3.TabIndex = 96;
            button3.Text = "Information";
            button3.UseVisualStyleBackColor = true;
            button3.Click += button3_Click;
            // 
            // button1
            // 
            button1.Font = new Font("Segoe UI", 10.2F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            button1.Location = new Point(448, 329);
            button1.Name = "button1";
            button1.Size = new Size(180, 37);
            button1.TabIndex = 100;
            button1.Text = "Information";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // richTextBox2
            // 
            richTextBox2.Location = new Point(54, 393);
            richTextBox2.Name = "richTextBox2";
            richTextBox2.Size = new Size(574, 153);
            richTextBox2.TabIndex = 99;
            richTextBox2.Text = "";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.BackColor = SystemColors.Control;
            label1.Font = new Font("Segoe UI", 12F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            label1.Location = new Point(66, 335);
            label1.Name = "label1";
            label1.Size = new Size(90, 28);
            label1.TabIndex = 98;
            label1.Text = "Flight Id";
            // 
            // textBox2
            // 
            textBox2.Location = new Point(179, 339);
            textBox2.Name = "textBox2";
            textBox2.Size = new Size(212, 27);
            textBox2.TabIndex = 97;
            // 
            // button2
            // 
            button2.Font = new Font("Segoe UI", 10.2F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            button2.Location = new Point(622, 561);
            button2.Name = "button2";
            button2.Size = new Size(94, 29);
            button2.TabIndex = 101;
            button2.Text = "Back";
            button2.UseVisualStyleBackColor = true;
            button2.Click += button2_Click;
            // 
            // Ticket
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(745, 602);
            Controls.Add(button2);
            Controls.Add(button1);
            Controls.Add(richTextBox2);
            Controls.Add(label1);
            Controls.Add(textBox2);
            Controls.Add(button3);
            Controls.Add(richTextBox1);
            Controls.Add(label4);
            Controls.Add(label11);
            Controls.Add(label5);
            Controls.Add(textBox1);
            Controls.Add(label2);
            FormBorderStyle = FormBorderStyle.None;
            Name = "Ticket";
            Text = "Ticket";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private Label label5;
        private TextBox textBox1;
        private Label label2;
        private Label label11;
        private Label label4;
        private RichTextBox richTextBox1;
        private Button button3;
        private Button button1;
        private RichTextBox richTextBox2;
        private Label label1;
        private TextBox textBox2;
        private Button button2;
    }
}