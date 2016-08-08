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
    public partial class ManageDbFlights : System.Web.UI.Page
    {
        string qrystring, conString;
        SqlConnection sqlCon;
        SqlCommand sqlCmd;
        SqlDataAdapter da;
        DataSet ds;
       // SqlDataReader dataReader;
        protected void Page_Load(object sender, EventArgs e)
        {
          
                conString = ConfigurationManager.ConnectionStrings["Airlines"].ConnectionString;
                sqlCon = new SqlConnection(conString);
                da = new SqlDataAdapter();
                ds = new DataSet();
                sqlCon.Open();
                qrystring = "select * from flights where departureTime <'" + DateTime.Now + "'";
                sqlCmd = new SqlCommand(qrystring, sqlCon);
                da.SelectCommand = sqlCmd;
                //ds.Clear();
                da.Fill(ds, "oldFlights");
                gridFlight.DataSource = ds;
                gridFlight.DataMember = "oldFlights";
                gridFlight.DataBind();
               // sqlCon.Close();
            

        }

        protected void btnArchive_Click(object sender, EventArgs e)
        {




            qrystring = "select * from flights where departureTime <'" + DateTime.Now + "'";
            sqlCmd = new SqlCommand(qrystring, sqlCon);
            da.SelectCommand = sqlCmd;
            ds.Clear();
            da.Fill(ds, "archive");
            
           
            DataTable dt = ds.Tables["archive"];
            DataRow dr = dt.NewRow();

            foreach (GridViewRow gvrow in gridFlight.Rows)
            {
                dr["id"] = gvrow.Cells[0].Text;
                dr["flightNo"] = gvrow.Cells[1].Text;
                dr["departureTime"] = gvrow.Cells[2].Text;
                dr["arrivalTime"] = gvrow.Cells[3].Text;
                dr["class"] = gvrow.Cells[4].Text;
                dr["fare"] = gvrow.Cells[5].Text;
                dr["doj"] = gvrow.Cells[6].Text;
                dr["destination"] = gvrow.Cells[7].Text;
                dr["origin"] = gvrow.Cells[8].Text;

                dr["seats"] = gvrow.Cells[9].Text;
            }
            SqlBulkCopy sqlBulk = new SqlBulkCopy(sqlCon);
            //Give your Destination table name
            sqlBulk.DestinationTableName = "flightsArch";
            sqlBulk.WriteToServer(dt);
            Response.Write("Inserted");
            qrystring = "delete from flights where departureTime <'" + DateTime.Now + "'";
            sqlCmd = new SqlCommand(qrystring, sqlCon);
            da.SelectCommand = sqlCmd;
            sqlCmd.ExecuteNonQuery();
            Response.Write("Deleted");
            sqlCon.Close();

           





        }

       
    }
}