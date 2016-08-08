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
    public partial class WebForm1 : System.Web.UI.Page
    {
        String conString, cmdString, cmdString1, cmdString2;
        SqlConnection sqlCon;

        SqlCommand sqlCmd;

        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

            conString = ConfigurationManager.ConnectionStrings["Airlines"].ConnectionString;
            sqlCon = new SqlConnection(conString);
            cmdString = "select userName from login";
            sqlCmd = new SqlCommand(cmdString, sqlCon);

            if (!IsPostBack)
            {
                sqlCon.Open();
                //dropShow.Items.Clear();
                dr = sqlCmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                        dropShow.Items.Add(dr["userName"].ToString());
                    dr.Close();
                    sqlCon.Close();

                }

            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            string user = dropShow.SelectedItem.Text;
            // Response.Write(user);
            try
            {
                sqlCon.Open();
                sqlCmd = new SqlCommand("Delete from login where userName='" + user + "'", sqlCon);
                sqlCmd.ExecuteNonQuery();

                lblMessage.Visible = true;
                dropShow.Items.Clear();
                dropShow.ClearSelection();
               

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