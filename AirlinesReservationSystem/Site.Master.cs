using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirlinesReservationSystem
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //lblName.Text = Session["userName"].ToString();
        }

        //protected void linkLogOut_Click(object sender, EventArgs e)
        //{
        //    Session.Abandon();
        //    Response.Redirect("LoginPage.aspx");
        //}

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }
    }
}