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
    public partial class ManageDbCustomers : System.Web.UI.Page
    {
        string qrystring, conString;
        SqlConnection sqlCon;
        SqlCommand sqlCmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
          
            
                
                
            conString = ConfigurationManager.ConnectionStrings["Airlines"].ConnectionString;
                sqlCon = new SqlConnection(conString);
                da = new SqlDataAdapter();
                ds = new DataSet();
                sqlCon.Open();
                qrystring = "select emailID as [emailID],COUNT(*) as [flyTimes] from customers group by emailID having COUNT(*)>=3";
                sqlCmd = new SqlCommand(qrystring, sqlCon);
                da.SelectCommand = sqlCmd;
                ds.Clear();
                da.Fill(ds, "customerfly");

                gridCustomers.DataSource = ds;
                gridCustomers.DataMember = "customerfly";
                gridCustomers.DataBind();
            //ds.Tables["customerfly"].Rows[]
               // Response.Write(ds["customerfly"].);
               
            }

        protected void btnArchive_Click(object sender, EventArgs e)
        {
            qrystring = "select emailID as [emailID],COUNT(*) as [flyTimes] from customers group by emailID having COUNT(*)>=3";
            sqlCmd = new SqlCommand(qrystring, sqlCon);
            da.SelectCommand = sqlCmd;
            ds.Clear();
            da.Fill(ds, "time");


            DataTable dt = ds.Tables["time"];
            DataRow dr = dt.NewRow();

            //foreach (GridViewRow gv in gridCustomers.Rows)
            //{
            //    //dr["emailID"] = gv.Cells[0].Text;
            //   // dr["flyTimes"] = gv.Cells[1].Text;
               
            //}
            SqlBulkCopy sqlBulk = new SqlBulkCopy(sqlCon);
            //Give your Destination table name
            sqlBulk.DestinationTableName = "frequentFliers";
            sqlBulk.WriteToServer(dt);
            //Response.Write("Inserted");

            sqlCon.Close();

        }
        }
    }
