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
    public partial class ChangePassword : System.Web.UI.Page
    {
        string qryString, conString;
        SqlConnection sqlCon;
        SqlCommand sqlCmd, sqlCmd1;
        SqlDataAdapter da, da1;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            conString = ConfigurationManager.ConnectionStrings["Airlines"].ConnectionString;
            sqlCon = new SqlConnection(conString);
            da = new SqlDataAdapter();
            ds = new DataSet();
         
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            sqlCon.Open();
            qryString = "select * from login";
            SqlDataAdapter da = new SqlDataAdapter(qryString, sqlCon);
            sqlCmd = new SqlCommand(qryString, sqlCon);
            da.SelectCommand = sqlCmd;
           // ds.Clear();
            da.Fill(ds, "pass");
            qryString = "update login set password='" + txtNewPwd.Text + "' where userName='" +Session["userName"].ToString()+"'" ;
            sqlCmd = new SqlCommand(qryString, sqlCon);
            da.SelectCommand = sqlCmd;
            sqlCmd.ExecuteNonQuery();
            txtNewPwd.Text = "";
            txtCPwd.Text = "";
            Response.Write("Password Changed successfully");


          
        }
    }
}