using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Text;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;
using Microsoft.EntityFrameworkCore;
using MySql.Data.MySqlClient;


namespace AirlineReservationSystem
{
    public partial class Login : Form
    {
        private MySqlConnection connetion;

        public Login()
        {
            InitializeComponent();
            InitializeDataBaseConnection();
        }

        private void InitializeDataBaseConnection()
        {
            string connectionString = "Server=localhost; Database = airlinedb; user ID=root;Charset=utf8;";
            connetion = new MySqlConnection(connectionString);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string username = textBox1.Text;
            string password = textBox2.Text;
            if (Users(username, password))
            {
                MessageBox.Show("Login successful!");
                Menu menu = new Menu();
                menu.Show();
                this.Hide();
            }

            else
            {
                MessageBox.Show("Invalid username or password.");
            }

        }
        private bool Users(string username, string password)
        {
            try
            {
                connetion.Open();
                string query = "SELECT * FROM users WHERE username = @username AND password = @password";
                MySqlCommand cmd = new MySqlCommand(query, connetion);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);
                MySqlDataReader reader = cmd.ExecuteReader();


                if (reader.Read())

                {
                    reader.Close();
                    return true;
                }

                else
                {
                    reader.Close();
                    return false;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            finally
            {
                connetion.Close();
            }
        }




        private void label6_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

            if (checkBox1.Checked)
            {
                textBox2.PasswordChar = '\0';
            }
            else
            {
                textBox2.PasswordChar = '*';
            }
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form1 form = new Form1();
            form.Show();
            this.Hide();
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text = string.Empty;
            textBox2.Text = string.Empty;
        }
    }
}

