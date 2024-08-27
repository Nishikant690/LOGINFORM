using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace LOGINFORM
{
    public partial class REGISTER : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Check if password and confirm password match
            if (PASSWORDTextBox.Text != CONFIRMPASSWORDTextBox.Text)
            {
                // Alert if passwords don't match
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Passwords do not match. Please try again.');", true);
                return;
            }

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "INSERT INTO signup (firstname, lastname, gender, email, address, username, password) VALUES (@firstname, @lastname, @gender, @email, @address, @username, @password)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@firstname", FIRSRNAMETextBox.Text);
                cmd.Parameters.AddWithValue("@lastname", LASTNAMETextBox.Text);
                cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Value); // Corrected SelectedItem.Value
                cmd.Parameters.AddWithValue("@email", EMAILTextBox.Text);
                cmd.Parameters.AddWithValue("@address", ADDRESSTextBox.Text);
                cmd.Parameters.AddWithValue("@username", USERNAMETextBox.Text);
                cmd.Parameters.AddWithValue("@password", PASSWORDTextBox.Text);

                try
                {
                    con.Open();
                    int a = cmd.ExecuteNonQuery();
                    if (a > 0)
                    {
                        // Display username and password in success message
                        string script = "alert('Signup Successful! Your Username is: " + USERNAMETextBox.Text + " and Password is: " + PASSWORDTextBox.Text + "');";
                        ClientScript.RegisterStartupScript(this.GetType(), "signupAlert", script, true);
                        clearControls();
                    }
                    else
                    {
                        string script = "alert('Signup Failed! Please try again.');";
                        ClientScript.RegisterStartupScript(this.GetType(), "signupFailedAlert", script, true);
                    }
                }
                catch (Exception ex)
                {
                    // Log the exception or handle it as needed
                    string script = "alert('An error occurred: " + ex.Message + "');";
                    ClientScript.RegisterStartupScript(this.GetType(), "errorAlert", script, true);
                }
                finally
                {
                    con.Close();
                }
            }
        }

        void clearControls()
        {
            FIRSRNAMETextBox.Text = "";
            LASTNAMETextBox.Text = "";
            EMAILTextBox.Text = "";
            ADDRESSTextBox.Text = "";
            USERNAMETextBox.Text = "";
            PASSWORDTextBox.Text = "";
            CONFIRMPASSWORDTextBox.Text = ""; // Set the Text property here
            DropDownList1.ClearSelection(); // Clear the dropdown selection
            System.Diagnostics.Debug.WriteLine("Controls cleared");
        }
    }
}
