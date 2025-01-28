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
    public partial class Books : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBooks();
            }
        }
        private void LoadBooks()
        {
            string filePath = Server.MapPath("~/App_Data/Books.txt");

            // Ensure the file exists before reading
            if (!File.Exists(filePath))
            {
                lblMessage.Text = "No books found!";
                return;
            }

            string[] books = File.ReadAllLines(filePath);
            DataTable dt = new DataTable();
            dt.Columns.Add("BookId");
            dt.Columns.Add("BookName");
            dt.Columns.Add("BookType");
            dt.Columns.Add("BookLevel");

            foreach (string book in books)
            {
                string[] details = book.Split(',');
                if (details.Length == 4)
                {
                    dt.Rows.Add(details[0], details[1], details[2], details[3]);
                }
            }

            gvBooks.DataSource = dt;
            gvBooks.DataBind();
        }
    }
}