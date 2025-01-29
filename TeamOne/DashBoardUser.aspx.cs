using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamOne
{
    public partial class DashBoardUser : System.Web.UI.Page
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
            Response.Redirect("Books.aspx");
        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Feedback.aspx");
        }

        protected void btnReserveRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReserveRoom.aspx");
        }

        protected void btnSeeRooms_Click(object sender, EventArgs e)
        {
            Response.Redirect("MeetingRooms.aspx");
        }

        protected void Profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile_of_user.aspx");
        }
    }
}