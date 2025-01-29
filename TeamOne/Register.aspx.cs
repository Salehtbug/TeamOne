using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamOne
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text != txtConfirmPassword.Text)
            {
                lblMessage.Text = "Passwords do not match.";
                return;
            }

            string filePath = Server.MapPath("~/App_Data/Users.txt");

            if (!Directory.Exists(Path.GetDirectoryName(filePath)))
            {
                Directory.CreateDirectory(Path.GetDirectoryName(filePath));
            }

            try
            {
                // ✅ Added Full Name and Profile Pic URL (Default Image)
                string newUser = $"{txtUsername.Text},{txtEmail.Text},{txtPassword.Text},{txtFullName.Text},default_profile.png";

                File.AppendAllText(filePath, newUser + Environment.NewLine);
                lblMessage.Text = "User registered successfully!";

                // ✅ Store Username in Session
                Session["LoggedInUser"] = txtUsername.Text;

                Response.Redirect("Profile_of_user.aspx");
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
            }
        }

    }
}