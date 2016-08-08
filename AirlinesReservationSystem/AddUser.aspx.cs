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
    public partial class AddUser : System.Web.UI.Page
    {
        string conString, qrystring;
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
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            qrystring = "select * from login";
            sqlCmd = new SqlCommand(qrystring, sqlCon);
            da.SelectCommand = sqlCmd;
            ds.Clear();
            da.Fill(ds, "login");
            DataTable dt = ds.Tables["login"];
            DataRow dr = dt.NewRow();
            dr["userName"] = txtUname.Text;
            dr["password"] = txtPwd.Text;
            dr["type"] = dropRole.SelectedItem.Text;
            dt.Rows.Add(dr);
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            da.Update(ds, "login");
            lblResponse.Visible = true;
            txtUname.Text = "";
            txtPwd.Text = "";
            dropRole.Text = "";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtUname.Text = "";
            txtPwd.Text = "";
            dropRole.Text = "";
        }
    }
}