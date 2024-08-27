using System;
using System.Web.UI;

namespace LOGINFORM
{
    public partial class Dashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                Response.Write("Welcome to my site Mr/Ms " + Session["user"].ToString());
                // JavaScript to handle session timeout warning
                ClientScript.RegisterStartupScript(this.GetType(), "timeout", "setTimeout(function() { alert('Session timeout, Please login again...'); window.location='WebForm1.aspx'; }, 120000);", true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("WebForm1.aspx");
        }
    }
}
