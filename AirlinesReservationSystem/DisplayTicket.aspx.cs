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
    public partial class DisplayTicket : System.Web.UI.Page
    {
        string conString, qryString;
        SqlConnection sqlCon;
        SqlCommand sqlCmd;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            conString = ConfigurationManager.ConnectionStrings["Airlines"].ConnectionString;
            sqlCon = new SqlConnection(conString);
            //da = new SqlDataAdapter();
            //ds = new DataSet();
            //qryString = "select c.customerName,c.flightNo,c.ticketNo,f.doj,f.departureTime,f.origin from customers c join flights f on c.ticketNo=f.ticketNo where c.ticketNo="+txtTicNum+";";
            //sqlCmd = new SqlCommand(qryString, sqlCon);
            //sqlCon.Open();

            
            //dr = sqlCmd.ExecuteReader();
            //if (dr.HasRows)
            //{
            //    while (dr.Read())
            //   {
            //       if (dr["ticketNo"].ToString() == txtTicNum.Text)
            //       {
            //           lblDPassName.Text = dr["customerName"].ToString();

            //           //lblDPName.Text=dr["customerName"].ToString();
            //           lblDFlightNo.Text = dr["flightNo"].ToString();
            //           //lblDTicNumber.Text=dr["ticketNo"].ToString();
            //           lblDOJ.Text = dr["doj"].ToString();
            //           lblDBorardOrigin.Text = dr["origin"].ToString();
            //           lblDBoardDateTime.Text = dr["departureTime"].ToString();

            //       }
                    
  
                    
                    
           
            //   }


             
            //}
            //dr.Close();
            //    sqlCon.Close();

        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            da = new SqlDataAdapter();
            ds = new DataSet();
            qryString = "select c.customerName,c.fare,c.seats,c.discount,c.totalAmount,c.flightNo,c.ticketNo,f.doj,f.departureTime,f.origin,f.destination from customers c join flights f on c.flightNo=f.flightNo";
            //where c.ticketNo=" + txtTicNum + ";";
            sqlCmd = new SqlCommand(qryString, sqlCon);
            sqlCon.Open();


            dr = sqlCmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    if (dr["ticketNo"].ToString() == txtTicNum.Text)
                    {

                        lblDPassName.Text = dr["customerName"].ToString();

                      
                        lblDFlightNo.Text = dr["flightNo"].ToString();
                        lblTicket.Text = dr["ticketNo"].ToString();
                        lblDDoj.Text = dr["doj"].ToString();
                    
                        lblDestination.Text = dr["destination"].ToString();
                        lblSeats.Text = dr["seats"].ToString();
                        lblFare.Text = dr["fare"].ToString();
                        lblDiscount.Text = dr["discount"].ToString();
                        lblTotal.Text = dr["totalAmount"].ToString();
                        lblDBorardOrigin.Text = dr["origin"].ToString();
                        lblDBoardDateTime.Text = dr["departureTime"].ToString();

                       // lblDPassName.Text = dr["customerName"].ToString();


                        lblDFlightNo.Visible = true;
                        lblTicket.Visible = true;
                        lblDPassName.Visible = true;
                        lblDDoj.Visible = true;
                        lblDestination.Visible = true;
                        lblSeats.Visible = true;
                        lblFare.Visible = true;
                        lblDiscount.Visible = true;
                        lblTotal.Visible = true;
                        lblDBorardOrigin.Visible=true;
                        lblDBoardDateTime.Visible=true;

                    }





                }



            }
            dr.Close();
            sqlCon.Close();

        }

        protected void txtTicNum_TextChanged(object sender, EventArgs e)
        {

        }
    }

        
}