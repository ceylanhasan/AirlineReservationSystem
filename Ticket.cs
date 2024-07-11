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
    public partial class Ticket : Form
    {
        private MySqlConnection connection;
        public Ticket()
        {
            InitializeComponent();
            InitializeDatabaseConnection();
        }
        private void InitializeDatabaseConnection()
        {
            string connectionString = "Server=localhost; Database=airlinedb; user ID=root;Charset=utf8;";
            connection = new MySqlConnection(connectionString);
        }

        private void getInfoButton_Click(object sender, EventArgs e)
        {
            int flightId;
            if (int.TryParse(textBox2.Text, out flightId))
            {
                GetFlightInfo(flightId);
            }
            else
            {
                MessageBox.Show("Please enter a valid Flight ID.");
            }
        }
        private void GetFlightInfo(int flightId)
        {
            try
            {
                connection.Open();
                string query = "SELECT * FROM Flights WHERE flight_id = @flightId";

                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@flightId", flightId);

                MySqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine($"Flight ID: {reader["flight_id"]}");
                    sb.AppendLine($"Airline: {reader["airline"]}");
                    sb.AppendLine($"Flight Number: {reader["flight_number"]}");
                    sb.AppendLine($"Departure Airport: {reader["departure_airport"]}");
                    sb.AppendLine($"Arrival Airport: {reader["arrival_airport"]}");
                    sb.AppendLine($"Departure DateTime: {reader["departure_datetime"]}");
                    sb.AppendLine($"Arrival DateTime: {reader["arrival_datetime"]}");
                    sb.AppendLine($"Status: {reader["status"]}");
                    sb.AppendLine($"Created At: {reader["created_at"]}");
                    sb.AppendLine($"Updated At: {reader["updated_at"]}");

                    richTextBox2.Text = sb.ToString();
                }
                else
                {
                    MessageBox.Show("Flight not found.");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error: {ex.Message}");
            }
            finally
            {
                connection.Close();
            }
        }

        private void getTicketInfoButton_Click(object sender, EventArgs e)
        {
            int ticketId;
            if (int.TryParse(textBox1.Text, out ticketId))
            {
                GetTicketInfo(ticketId);
            }
            else
            {
                MessageBox.Show("Please enter a valid Ticket ID.");
            }
        }

        private void GetTicketInfo(int ticketId)
        {
            try
            {
                connection.Open();
                string query = "SELECT * FROM Tickets WHERE ticket_id = @ticketId";

                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@ticketId", ticketId);

                MySqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine($"Ticket ID: {reader["ticket_id"]}");
                    sb.AppendLine($"Flight ID: {reader["flight_id"]}");
                    sb.AppendLine($"Passenger ID: {reader["passenger_id"]}");
                    sb.AppendLine($"Seat Number: {reader["seat_number"]}");
                    sb.AppendLine($"Booking Date: {reader["booking_date"]}");

                    richTextBox1.Text = sb.ToString();
                }
                else
                {
                    MessageBox.Show("Ticket not found.");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error: {ex.Message}");
            }
            finally
            {
                connection.Close();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int flightId;
            if (int.TryParse(textBox2.Text, out flightId))
            {
                GetFlightInfo(flightId);
            }
            else
            {
                MessageBox.Show("Please enter a valid Flight ID.");
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            int ticketId;
            if (int.TryParse(textBox1.Text, out ticketId))
            {
                GetTicketInfo(ticketId);
            }
            else
            {
                MessageBox.Show("Please enter a valid Ticket ID.");
            }
        }

        private void label4_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Menu form = new Menu();
            form.Show();
            this.Hide();
        }
    }
}
