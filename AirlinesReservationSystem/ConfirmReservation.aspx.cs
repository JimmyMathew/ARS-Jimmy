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
    public partial class ConfirmReservation : System.Web.UI.Page
    {
        string conString, qryString,qryString1;
        SqlConnection sqlCon;
        SqlCommand sqlCmd;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            conString = ConfigurationManager.ConnectionStrings["Airlines"].ConnectionString;
            sqlCon = new SqlConnection(conString);
            da = new SqlDataAdapter();
            ds = new DataSet();
            
            qryString = "select ticketNo from customers";
            sqlCmd = new SqlCommand(qryString, sqlCon);
            sqlCon.Open();
            dr = sqlCmd.ExecuteReader();
            if (!Page.IsPostBack)
            {
                if (dr.HasRows)
                {
                    while (dr.Read())
                        DropDownLTicketNumber.Items.Add(dr["ticketNo"].ToString());



                }
               
            }
            dr.Close();
            sqlCon.Close();
           
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            qryString1 = "select * from customers";
            SqlDataAdapter da = new SqlDataAdapter(qryString1, sqlCon);
            //+DropDownLTicketNumber.SelectedItem.Text+"'";
            //qryString1 = "select * from customers";
            sqlCmd = new SqlCommand(qryString, sqlCon);
            da.SelectCommand = sqlCmd;

            ds.Clear();
            da.Fill(ds, "cust");
            DataTable dt = ds.Tables["cust"];
            DataRow dr = dt.NewRow();
            dr["ticketNo"] = DropDownLTicketNumber.SelectedItem.Text;
            
            //dt.Rows[0]["confirmed"] = "1";
            qryString = "update  customers set confirmed='" + 1 + "'where ticketNo ='" + DropDownLTicketNumber.SelectedItem.Text + "'";
            SqlDataAdapter adapter = new SqlDataAdapter();
            dt.Rows.Add(dr);
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            da.Update(ds, "cust");
            lblResponse.Visible = true;

         //   Response.Write("Reservation Confirmed Successfully!!!");
            //Response.Redirect("DisplayTicket.aspx");




                    }
        }
    }
