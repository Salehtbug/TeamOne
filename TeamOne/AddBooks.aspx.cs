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
    public partial class AddBooks : System.Web.UI.Page
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

        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("~/App_Data/Books.txt");

            // Get input values
            string bookId = txtBookId.Text.Trim();
            string bookName = txtBookName.Text.Trim();
            string bookType = txtBookType.Text.Trim();
            string bookLevel = txtBookLevel.Text.Trim();

            // Validate input
            if (string.IsNullOrEmpty(bookId) || string.IsNullOrEmpty(bookName) ||
                string.IsNullOrEmpty(bookType) || string.IsNullOrEmpty(bookLevel))
            {
                lblMessage.Text = "Please fill in all fields!";
                return;
            }

            // Save to file
            string newBook = $"{bookId},{bookName},{bookType},{bookLevel}";
            File.AppendAllText(filePath, newBook + Environment.NewLine);

            // Refresh the book list
            LoadBooks();

            // Clear input fields
            txtBookId.Text = "";
            txtBookName.Text = "";
            txtBookType.Text = "";
            txtBookLevel.Text = "";

            lblMessage.Text = "Book added successfully!";
        }
    }
}

