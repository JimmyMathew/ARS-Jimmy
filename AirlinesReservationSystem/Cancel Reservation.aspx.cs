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
    public partial class Cancel_Reservation : System.Web.UI.Page
    {
        string conString, qryString, qryString1;
        SqlConnection sqlCon;
        SqlCommand sqlCmd;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            conString = ConfigurationManager.ConnectionStrings["Airlines"].ConnectionString;
            sqlCon = new SqlConnection(conString);
        }

        protected void Btncr_Click(object sender, EventArgs e)
        {
            string cancel = Txttnum.Text;
            try
            {
                sqlCon.Open();
                   sqlCmd = new SqlCommand("Delete from customers where ticketNo='" + cancel + "'", sqlCon);
                 sqlCmd.ExecuteNonQuery();
                 lblResponse.Visible = true;
                // Response.Write("Reservation Cancelled!!");
            }
                        catch (Exception ex)
            {
               Response.Write(ex.Message.ToString());

            }
            finally
            {

              sqlCon.Close();
            }

        }
    }
}