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
    public partial class MeetingRooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRooms();
            }
        }

             private void LoadRooms()
        {
            string filePath = Server.MapPath("~/App_Data/Rooms.txt");

            // Ensure the file exists before reading
            if (!File.Exists(filePath))
            {
                lblMessage.Text = "No meeting rooms found!";
                return;
            }

            string[] rooms = File.ReadAllLines(filePath);
            DataTable dt = new DataTable();
            dt.Columns.Add("RoomId");
            dt.Columns.Add("RoomName");
            dt.Columns.Add("RoomLocation");
            dt.Columns.Add("RoomCapacity");

            foreach (string room in rooms)
            {
                string[] details = room.Split(',');
                if (details.Length == 4)
                {
                    dt.Rows.Add(details[0], details[1], details[2], details[3]);
                }
            }

            gvRooms.DataSource = dt;
            gvRooms.DataBind();
        }

        protected void btnReserveRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReserveRoom.aspx");
        }

    }
}
