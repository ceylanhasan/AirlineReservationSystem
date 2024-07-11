using MySql.Data.MySqlClient;

namespace AirlineReservationSystem
{
    public partial class Flight : Form
    {
        private MySqlConnection connection;

        public Flight()
        {
            InitializeComponent();
            InitializeDataBaseConnection();
        }

        private void InitializeDataBaseConnection()
        {
            string connectionString = "Server=localhost; Database=airlinedb; user ID=root;Charset=utf8;";
            connection = new MySqlConnection(connectionString);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //  string flight_id = textBox10.Text;
            // string airline = textBox8.Text;
            //  string flightNumber = textBox4.Text;
            //   string departureAirport = comboBox4.Text;
            //   string arrivalAirport = comboBox3.Text;
            //   DateTime departureDatetime = dateTimePicker4.Value;
            //   DateTime arrivalDatetime = dateTimePicker3.Value;
            //    string status = comboBox2.Text;
            //
            //   if (AddFlight(flight_id, airline, flightNumber, departureAirport, arrivalAirport, departureDatetime, arrivalDatetime, status))
            //   {
            //       MessageBox.Show("Flight added successfully.");
            //   }
            //  else
            //   {
            //     MessageBox.Show("Failed to add flight.");
            //     }
        }

        private bool AddFlight(string flight_id, string airline, string flightNumber, string departureAirport, string arrivalAirport, DateTime departureDatetime, DateTime arrivalDatetime, string status)
        {
            try
            {
                connection.Open();
                string query = "INSERT INTO Flights (airline, flight_number, departure_airport, arrival_airport, departure_datetime, arrival_datetime, status, created_at, updated_at) " +
                               "VALUES (@airline, @flightNumber, @departureAirport, @arrivalAirport, @departureDatetime, @arrivalDatetime, @status, @createdAt, @updatedAt)";

                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@airline", airline);
                cmd.Parameters.AddWithValue("@flightNumber", flightNumber);
                cmd.Parameters.AddWithValue("@departureAirport", departureAirport);
                cmd.Parameters.AddWithValue("@arrivalAirport", arrivalAirport);
                cmd.Parameters.AddWithValue("@departureDatetime", departureDatetime);
                cmd.Parameters.AddWithValue("@arrivalDatetime", arrivalDatetime);
                cmd.Parameters.AddWithValue("@status", status);
                cmd.Parameters.AddWithValue("@createdAt", DateTime.Now);
                cmd.Parameters.AddWithValue("@updatedAt", DateTime.Now);
                cmd.ExecuteNonQuery();
                return true;
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

        private void Flight_Load(object sender, EventArgs e)
        {

        }

        private void Flight_Load_1(object sender, EventArgs e)
        {

        }

        private void button3_Click_1(object sender, EventArgs e)
        {

            string flight_id = textBox10.Text;
            string airline = textBox8.Text;
            string flightNumber = textBox4.Text;
            string departureAirport = comboBox4.Text;
            string arrivalAirport = comboBox3.Text;
            DateTime departureDatetime = dateTimePicker4.Value;
            DateTime arrivalDatetime = dateTimePicker3.Value;
            string status = comboBox2.Text;

            if (AddFlight(flight_id, airline, flightNumber, departureAirport, arrivalAirport, departureDatetime, arrivalDatetime, status))
            {
                MessageBox.Show("Flight added successfully.");
            }
            else
            {
                MessageBox.Show("Failed to add flight.");
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Menu form = new Menu();
            form.Show();
            this.Hide();
        }

        private void label22_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
