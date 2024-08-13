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
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("WebForm1.aspx");
        }
    }
}
