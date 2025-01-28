using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamOne
{
        public partial class HomePage : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
            }

            protected void btnLogin_Click(object sender, EventArgs e)
            {
                // Redirect to Login page
                Response.Redirect("Login.aspx");
            }

            protected void btnRegister_Click(object sender, EventArgs e)
            {
                // Redirect to Register page
                Response.Redirect("Register.aspx");
            }
        }
    }


