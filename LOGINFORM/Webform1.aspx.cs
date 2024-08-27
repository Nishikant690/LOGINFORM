using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace LOGINFORM
{
    public partial class WebForm1 : Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LOGINButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT * FROM signup WHERE username = @user AND password = @pass";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@user", USERTextBox.Text);
                cmd.Parameters.AddWithValue("@pass", PassTextBox.Text);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Session["user"] = USERTextBox.Text;
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Successful!!'); window.location='Dashboard.aspx';", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Failed!!');", true);
                }
                con.Close();
            }
        }
    }
}
