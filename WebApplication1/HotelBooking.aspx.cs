using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class HotelBooking : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Hotel_Reservation.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
            conn.Open();
            disp_data();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Hotel_Booking values('" + txtName.Text + "','" + txtmail.Text + "','" + txtphone.Text + "','" + txtcheckindate.Text + "','" + txtcheckintime.Text + "','" + txtcheckoutdate.Text + "','" + txtchechouttime.Text + "','" + txtroomPreference.Text + "','" + txtnoOfRooms.Text + "','" + txtadults.Text + "','" + txtchildren.Text + "')";
            cmd.ExecuteNonQuery();

            txtName.Text = "";
            txtmail.Text = "";
            txtphone.Text = "";
            txtcheckindate.Text = "";
            txtcheckintime.Text = "";
            txtcheckoutdate.Text = "";
            txtchechouttime.Text = "";
            txtroomPreference.Text = "";
            txtnoOfRooms.Text = "";
            txtadults.Text = "";
            txtchildren.Text = "";
            

            disp_data();
        }
        public void disp_data()
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Hotel_Booking";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        
    }
}