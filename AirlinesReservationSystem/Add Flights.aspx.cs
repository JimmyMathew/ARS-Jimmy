using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;

namespace AirlinesReservationSystem
{  
    public partial class Add_Flights : System.Web.UI.Page
    {
        string conString;
        SqlConnection sqlCon;
        SqlCommand sqlCmd;
        SqlDataReader dr;


        protected void Page_Load(object sender, EventArgs e)
        {
            //DropClass.Items.Add("Executive");
            //DropClass.Items.Add("Buisness");

            conString = ConfigurationManager.ConnectionStrings["Airlines"].ConnectionString;
            sqlCon = new SqlConnection(conString);
            //da = new SqlDataAdapter();
            //ds = new DataSet();
        }

        

        protected void DropClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            //DropClass.Items.Add("Executive");
            //DropClass.Items.Add("Buisness");
        }

        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
           sqlCon.Open();
           sqlCmd = new SqlCommand("insert into flights values('" + Txtfnum.Text + "','" + Txtdeptime.Text + "','" + Txtarrtime.Text + "','" + DropClass.SelectedItem.Text + "','" + txtFare.Text + "','" + Calendar1.SelectedDate.ToString() + "','" + txtDest.Text + "','" + txtOrigin.Text + "','" +txtSeats.Text+ "')", sqlCon);
           LblResult.Visible = true;

          // Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('New flight has been Added!!');</script>");
           //Response.Write("flights added");
           sqlCmd.ExecuteNonQuery();
           sqlCon.Close();
        }
    }
}