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
    public partial class DiscountbyNo : System.Web.UI.Page
    {
        string qrystring, conString;
        SqlConnection sqlCon;
        SqlCommand sqlCmd;
       
        DataSet ds;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            conString = ConfigurationManager.ConnectionStrings["Airlines"].ConnectionString;
            sqlCon = new SqlConnection(conString);
            sqlCon.Open();
            qrystring = "select distinct(emailID) from customers";
            sqlCmd = new SqlCommand(qrystring, sqlCon);
            dr = sqlCmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    dropEmail.Items.Add(dr["emailID"].ToString());

                }


                sqlCon.Close();

            }


            // Response.Write(user);

           
        }

        protected void btnGet_Click(object sender, EventArgs e)
        {
            string selected = dropEmail.SelectedItem.ToString();
            sqlCon.Open();
            sqlCmd = new SqlCommand("select COUNT(*) as fly from customers where emailID='" + selected + "'", sqlCon);
            dr = sqlCmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                //Response.Write(dr[1]);
                {


                    lblflown.Text = dr[0].ToString();
                }

                //dropEmail.Items.Clear();
                //dropEmail.ClearSelection();



            }
        }

        protected void btnDiscount_Click(object sender, EventArgs e)
        {
            sqlCon.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            qrystring = "insert into discount values('" + dropEmail.SelectedItem.ToString() + "','" + int.Parse(lblflown.Text) +  "','" + int.Parse(drpDiscount.SelectedItem.ToString()) + "')";

            sqlCmd = new SqlCommand(qrystring, sqlCon);
            da.SelectCommand = sqlCmd;
            sqlCmd.ExecuteNonQuery();
            lblResponse.Visible = true;

           // Response.Write("Inserted");
        }
    }
}