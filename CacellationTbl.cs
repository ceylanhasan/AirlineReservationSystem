using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;
using Microsoft.EntityFrameworkCore;

namespace AirlineReservationSystem
{
    public partial class Cencellations : Form
    {
        private MySqlConnection connection;
        public Cencellations()
        {
            InitializeComponent();
            InitializeDatabaseConnection();
        }

        private void InitializeDatabaseConnection()
        {
            string connectionString = "Server=localhost; Database=airlinedb; user ID=root;Charset=utf8;";
            connection = new MySqlConnection(connectionString);
        }

        private void BookingForm_Load(object sender, EventArgs e)
        {
            //  using (var context = new AirlineDbContext())
            {
                // var bookings = context.Bookings.ToList();
                //   dataGridView1.DataSource = bookings;
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string flightNumber = textBox2.Text;
            string flight_id = textBox1.Text;


            if (CancellationFlight(flightNumber, flight_id))
            {
                MessageBox.Show("Flight cancelled successfully.");
            }
            else
            {
                MessageBox.Show("Failed to cancel flight.");
            }
        }
        private bool CancellationFlight(string flightNumber, string flight_id)
        {
            try
            {
                connection.Open();
                string query = "DELETE FROM Flights WHERE flight_number = @flightNumber";

                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@flightNumber", flightNumber);
                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected > 0;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error: {ex.Message}");
                return false;
            }
            finally
            {
                connection.Close();
            }
        }

        private System.Windows.Forms.TextBox flightNumberTextBox;
        private System.Windows.Forms.Button cancelButton;

        private void button1_Click(object sender, EventArgs e)
        {
            Menu form = new Menu();
            form.Show();
            this.Hide();
        }

        private void label4_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void Cencellations_Load(object sender, EventArgs e)
        {

        }
    }
}

