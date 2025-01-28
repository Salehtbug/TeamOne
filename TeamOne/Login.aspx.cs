using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamOne
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("~/App_Data/Users.txt");

            if (!File.Exists(filePath))
            {
                lblMessage.Text = "No users registered yet.";
                return;
            }

            string[] users = File.ReadAllLines(filePath);
            string loginAttempt = $"{txtUsername.Text},{txtPassword.Text}";

            bool isAuthenticated = false;
            bool isAdmin = false;

            foreach (string user in users)
            {
                string[] credentials = user.Split(',');
                if (credentials.Length == 3 && credentials[0] == txtUsername.Text && credentials[2] == txtPassword.Text)
                {
                    isAuthenticated = true;

                    // Check if the user is the admin
                    if (credentials[0] == "admin" && credentials[2] == "Admin123")
                    {
                        isAdmin = true;
                    }
                    break;
                }
            }

            if (isAuthenticated)
            {
                if (isAdmin)
                {
                    Response.Redirect("AdminDashboard.aspx");
                }
                else
                {
                    Response.Redirect("DashBoardUser.aspx");
                }
            }
            else
            {
                lblMessage.Text = "Invalid username or password.";
                txtUsername.Text = "";
                txtPassword.Text = "";
            }
        }


    }

}
