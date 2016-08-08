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
    public partial class LoginPage : System.Web.UI.Page
    {
        string conString, qryString;
        SqlConnection sqlCon;
        SqlCommand sqlCmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            conString = ConfigurationManager.ConnectionStrings["Airlines"].ConnectionString;
            sqlCon = new SqlConnection(conString);

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Response.Write("click");
            string userName = txtUserName.Text;
            string password = txtPassword.Text;
            string type = dropType.SelectedItem.Text;
            //int count = 0;
            sqlCon.Open();
         
            qryString = "select * from login where userName='" +userName+"'and password='" +password+"'and type='"+type+"'";
            sqlCmd = new SqlCommand(qryString, sqlCon);


            SqlDataReader dr = sqlCmd.ExecuteReader();

                if (dr.Read())
                {
                    if (dr.GetValue(1).ToString() == txtUserName.Text)
                    {
                        
                        Session["userName"] = userName;
                        Session["type"]=type;
                        Response.Redirect("About.aspx");
                    }
                    else
                    {
                        lblError.Text = "Invalid  Credentials";
                        lblError.Visible = true;
                    }
                }
                else
                {
                   lblError.Text = "Invalid Credentials ";
                   lblError.Visible = true;
                }


            }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
        }


        }
    }
