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
    public partial class CreateReservation : System.Web.UI.Page
    {
        string conString, qryString;
        SqlConnection sqlCon;
        SqlCommand sqlCmd;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds;
        int seatNew = 0;
        int seatOld,finalSeats;
        int discount = 0;
        int fare = 0;
        int totalAmount = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            conString = ConfigurationManager.ConnectionStrings["Airlines"].ConnectionString;
            sqlCon = new SqlConnection(conString);
            // sqlCon = new SqlConnection(conString);
            da = new SqlDataAdapter();
            ds = new DataSet();
            qryString = "select destination,origin,departureTime,flightNo,seats,fare from flights";
            sqlCmd = new SqlCommand(qryString, sqlCon);
            sqlCon.Open();
            dr = sqlCmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    DropDownFlightNo.Items.Add(dr["flightNo"].ToString());
                    if (dr["flightNo"].ToString()==DropDownFlightNo.SelectedItem.ToString())
                    {
                        txtFlightDestination.Text = dr["destination"].ToString();

                        txtFlghtOrigin.Text = dr["origin"].ToString();

                        txtDepTime.Text = dr["departureTime"].ToString();
                        fare = int.Parse(dr["fare"].ToString());
                        
                    }
                }

               
                dr.Close();
               
}
          


        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Discount fetch block
            qryString = "select * from discount where emailID='" + txtEmailID.Text + "'";
            sqlCmd = new SqlCommand(qryString, sqlCon);
            da.SelectCommand = sqlCmd;
            da.Fill(ds, "discount");
            DataTable discountTable = ds.Tables["discount"];
            if (discountTable != null)
            {
                if (int.Parse(discountTable.Rows[0].ItemArray.GetValue(0).ToString()) != 0)
                {
                    discount = int.Parse(discountTable.Rows[0].ItemArray.GetValue(0).ToString());
                }
            }
            else
            {
                discount = 0;
            }
            Response.Write(discount);

            seatNew = int.Parse(txtSeats.Text);
            fare = fare * seatNew;
            //Discount calculation block
            if (discount == 5)
            {
                totalAmount = fare - (fare * 5 / 100);
            }
            else if (discount == 10)
            {
                totalAmount = fare - (fare * 10 / 100);
            }
            else if (discount == 15)
            {
                totalAmount = fare - (fare * 10 / 100);
            }
            else 
            {
                totalAmount = fare;
            }

            try
            {
               //seat update block 
                qryString = "select * from customers";
                sqlCmd = new SqlCommand(qryString, sqlCon);
                da.SelectCommand = sqlCmd;
                ds.Clear();
                da.Fill(ds, "cust");
                DataTable dt = ds.Tables["cust"];
                DataRow dr = dt.NewRow();
                dr["flightNo"] = DropDownFlightNo.SelectedItem.Text;
                dr["class"] = DrpDownClass.SelectedItem.Text;
                dr["doj"] = CalendarDOJ.SelectedDate.ToLongDateString();
                dr["ticketNo"] = txtTicketNo.Text;
                dr["fare"] = fare;
                dr["seats"] = int.Parse(txtSeats.Text);
                dr["discount"] = discount;
                dr["totalAmount"] = totalAmount;
                dr["customerName"] = txtCusName.Text;
                dr["EmailID"] = txtEmailID.Text;
                dt.Rows.Add(dr);
                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                da.Update(ds, "cust");
               //Response.Write("Reservation Completed!!");
                //ScriptManager.RegisterStartupScript(Page, this.GetType(), "msgbox", "alert('Reservation Successful')", true);
                
             
               qryString = "select * from flights where flightNo='" + int.Parse(DropDownFlightNo.SelectedItem.ToString()) + "'";
               sqlCmd = new SqlCommand(qryString, sqlCon);
               da.SelectCommand = sqlCmd;
               da.Fill(ds, "seat");

               DataTable seatTable = ds.Tables["seat"];


               seatOld = int.Parse(seatTable.Rows[0].ItemArray.GetValue(9).ToString());
               finalSeats = seatOld - seatNew;
              // Response.Write(finalSeats);
               qryString ="update flights set seats='" + finalSeats + "'where flightNo='" + int.Parse(DropDownFlightNo.SelectedItem.ToString()) +"'";
               sqlCmd = new SqlCommand(qryString, sqlCon);
               da.SelectCommand = sqlCmd;
               sqlCmd.ExecuteNonQuery();

              
               Response.Write("Reservation Completed!!");

            }

            catch(Exception ex) {

                Response.Write(ex.Message);

            }

            }
    }
}