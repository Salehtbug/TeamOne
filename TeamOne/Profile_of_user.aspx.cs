using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamOne
{
    public partial class Profile_of_user : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProfile();
            }
        }

        private void LoadProfile()
        {
            // ✅ Get the logged-in user from Session
            string username = Session["LoggedInUser"] as string;

            if (string.IsNullOrEmpty(username))
            {
                lblMessage.Text = "No user logged in.";
                return;
            }

            string filePath = Server.MapPath("~/App_Data/Users.txt");

            if (!File.Exists(filePath))
            {
                lblMessage.Text = "User database not found!";
                return;
            }

            // ✅ Read User Data from the File
            string[] users = File.ReadAllLines(filePath);

            foreach (string user in users)
            {
                string[] details = user.Split(',');

                if (details.Length >= 5 && details[0] == username)
                {
                    txtUsername.Text = details[0];
                    txtEmail.Text = details[1];
                    txtFullName.Text = details[3];
                    imgProfile.ImageUrl = "~/Images/" + details[4]; // Profile Image
                    return;
                }
            }

            lblMessage.Text = "User profile not found!";
        }
        protected void btnSaveProfile_Click(object sender, EventArgs e)
        {
            string username = Session["LoggedInUser"] as string;
            if (string.IsNullOrEmpty(username))
            {
                lblMessage.Text = "No user logged in.";
                return;
            }

            string filePath = Server.MapPath("~/App_Data/Users.txt");

            if (!File.Exists(filePath))
            {
                lblMessage.Text = "User database not found!";
                return;
            }

            string[] users = File.ReadAllLines(filePath);
            for (int i = 0; i < users.Length; i++)
            {
                string[] details = users[i].Split(',');

                if (details.Length >= 5 && details[0] == username)
                {
                    // ✅ Update User Info (Keeps Password)
                    users[i] = $"{username},{txtEmail.Text},{details[2]},{txtFullName.Text},{details[4]}";
                    break;
                }
            }
        }

        protected void btnSubmitReset_Click(object sender, EventArgs e)
        {
            string newPassword = txtNewPassword.Text;
            string confirmPassword = txtConfirmNewPassword.Text;

            // Validate new passwords
            if (string.IsNullOrEmpty(newPassword) || string.IsNullOrEmpty(confirmPassword))
            {
                Response.Write("<script>alert('Please enter a new password.');</script>");
                return;
            }

            if (newPassword != confirmPassword)
            {
                Response.Write("<script>alert('Passwords do not match!');</script>");
                return;
            }

            // TODO: Save new password to database (Example logic)
            Response.Write("<script>alert('Password has been reset successfully!');</script>");
        }

    }
 }



