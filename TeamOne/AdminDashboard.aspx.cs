using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamOne
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void btnBorrowBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("BorrowBook.aspx");
        }

        protected void btnSeeAllBooks_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddBooks.aspx");
        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteBooks.aspx");
        }

        protected void btnReserveRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditBook.aspx");
        }
    }
}
