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
    public partial class AffinityReport : System.Web.UI.Page
    {
        string conString, queryString;
        SqlConnection sqlCon;
        SqlCommand sqlCmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            conString = ConfigurationManager.ConnectionStrings["Airlines"].ConnectionString;
            sqlCon = new SqlConnection(conString);
            queryString = "select emailID from customers";
            //queryString1="select emailid,count(*) as totaltimesflown from customers group by having emailID=
            sqlCmd = new SqlCommand(queryString, sqlCon);
            sqlCon.Open();
            dr = sqlCmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                    DropDownList1.Items.Add(dr["emailID"].ToString());
                DropDownList1.DataBind();
                dr.Close();
                sqlCon.Close();

            }

        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            //queryString = "select emailID,sum(totalAmount)as farecollected from customers group by emailID having emailID='" + DropDownList1.SelectedValue.ToString() + "'";

            //sqlCmd = new SqlCommand(queryString, sqlCon);
            //sqlCon.Open();

            //dr = sqlCmd.ExecuteReader();
            //if (dr.HasRows)
            //{
            //    while (dr.Read())
            //    //Response.Write(dr[1]);
            //    {

              
            //        lblFare.Text = dr[1].ToString();
            //    }
            //        dr.Close();
            //        sqlCon.Close();
                
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
              queryString = "select emailID,sum(totalAmount)as farecollected from customers group by emailID having emailID='" + DropDownList1.SelectedValue.ToString() + "'";

            sqlCmd = new SqlCommand(queryString, sqlCon);
            sqlCon.Open();

            dr = sqlCmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                //Response.Write(dr[1]);
                {

              
                    lblFare.Text = dr[1].ToString();
                }
                    dr.Close();
                    sqlCon.Close();
                
            }
        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            queryString = "select emailID,count(*)as totaltimesflown from customers group by emailID having emailID='" + DropDownList1.SelectedValue.ToString() + "'";

            sqlCmd = new SqlCommand(queryString, sqlCon);
            sqlCon.Open();

            dr = sqlCmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                //Response.Write(dr[1]);
                {


                   lblNo.Text = dr[1].ToString();
                }
                dr.Close();
                sqlCon.Close();

            }
        }

            //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
            //{
            //    queryString = "select emailID,sum(totalAmount) as farecollected from customers group by emailID where emailID="+DropDownList1.SelectedIndex.ToString();
            //    sqlCmd = new SqlCommand(queryString, sqlCon);
            //    sqlCon.Open();
            //    dr = sqlCmd.ExecuteReader();
            //    if (dr.HasRows)
            //    {
            //        while (dr.Read())
            //        {
            //            GridView1.DataSource = dr;
            //        }
            //    }
            //    sqlCon.Close();
            //    dr.Close();
            //}

            //protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
            //{

            //}

            //protected void btnFare_Click(object sender, EventArgs e)
            //{
            //    queryString = "select emailID,sum(totalAmount) as farecollected from customers group by emailID";
            //    sqlCmd = new SqlCommand(queryString, sqlCon);
            //    sqlCon.Open();
            //    dr = sqlCmd.ExecuteReader();
            //    if (dr.HasRows)
            //    {
            //        while (dr.Read())
            //        {

            //        }
            //    }
            //    sqlCon.Close();
            //    dr.Close();
            //}


        }
    }
