namespace AirlineReservationSystem
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click_1(object sender, EventArgs e)
        {
            Login login = new Login();
            login.Show();
            this.Hide();

        }

        private void label4_Click(object sender, EventArgs e)
        {
            EmployeesLogin login = new EmployeesLogin();
            login.Show();
            this.Hide();
        }
    }
}
