using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamOne
{
    public partial class EditBook : System.Web.UI.Page
    {
        private string filePath;
        protected void Page_Load(object sender, EventArgs e)
        {
            filePath = Server.MapPath("~/App_Data/Books.txt");

            if (!IsPostBack)
            {
                LoadBooks();
            }
        }


        private void LoadBooks()
        {
            ddlBooks.Items.Clear();

            if (!File.Exists(filePath))
            {
                lblMessage.Text = "No books found!";
                return;
            }

            string[] books = File.ReadAllLines(filePath);

            foreach (string book in books)
            {
                string[] details = book.Split(',');
                if (details.Length == 4)
                {
                    ddlBooks.Items.Add(new ListItem(details[1], book)); // Book Name, Full Record
                }
            }
        }

        protected void ddlBooks_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedBook = ddlBooks.SelectedValue;

            if (!string.IsNullOrEmpty(selectedBook))
            {
                string[] details = selectedBook.Split(',');

                if (details.Length == 4)
                {
                    txtBookId.Text = details[0];
                    txtBookName.Text = details[1];
                    txtBookType.Text = details[2];
                    txtBookLevel.Text = details[3];
                }
            }
        }

        protected void btnUpdateBook_Click(object sender, EventArgs e)
        {
            string bookId = txtBookId.Text;
            string bookName = txtBookName.Text;
            string bookType = txtBookType.Text;
            string bookLevel = txtBookLevel.Text;

            if (string.IsNullOrEmpty(bookId) || string.IsNullOrEmpty(bookName) ||
                string.IsNullOrEmpty(bookType) || string.IsNullOrEmpty(bookLevel))
            {
                lblMessage.Text = "Please fill in all fields!";
                return;
            }

            string[] books = File.ReadAllLines(filePath);
            for (int i = 0; i < books.Length; i++)
            {
                string[] details = books[i].Split(',');
                if (details.Length == 4 && details[0] == bookId)
                {
                    books[i] = $"{bookId},{bookName},{bookType},{bookLevel}";
                    break;
                }
            }

            File.WriteAllLines(filePath, books);
            lblMessage.Text = "Book updated successfully!";

            LoadBooks(); 
        }
    }
}
