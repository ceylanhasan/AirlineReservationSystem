using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AirlineReservationSystem
{
    public partial class Menu : Form
    {
        public Menu()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Flight flight = new Flight();
            flight.Show();
            this.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Cencellations flight = new Cencellations();
            flight.Show();
            this.Hide();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Ticket flight = new Ticket();
            flight.Show();
            this.Hide();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Ticket flight = new Ticket();
            flight.Show();
            this.Hide();
        }
    }
}
