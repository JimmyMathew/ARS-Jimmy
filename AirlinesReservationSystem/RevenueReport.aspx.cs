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
    public partial class RevenueReport : System.Web.UI.Page
    {
        String conString, cmdString, cmdString1, cmdString2;
        SqlConnection sqlCon; 
   
        SqlCommand sqlCmd;
       
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            conString = ConfigurationManager.ConnectionStrings["Airlines"].ConnectionString;
         ;

        }
            

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            //select sum(totalAmount)as [Total revenue] from customers where doj between '2016-08-02' and '2016-08-02' 

               sqlCon = new SqlConnection(conString);
               cmdString = "select sum(totalAmount)as [Total revenue] from customers where doj between'"+calFrom.SelectedDate+"'and'"+calTo.SelectedDate+"'";
               sqlCmd = new SqlCommand(cmdString, sqlCon);
               sqlCon.Open();
               dr = sqlCmd.ExecuteReader();
               if (dr.HasRows)
               {
                   while (dr.Read())
                       lblRevenue.Text = dr[0].ToString();
                   lblRevenue.Visible = true;

                   dr.Close();
                   sqlCon.Close();

               }

        }
    }
}