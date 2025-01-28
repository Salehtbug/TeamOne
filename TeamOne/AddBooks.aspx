<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBooks.aspx.cs" Inherits="TeamOne.AddBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        .container { margin-top: 50px; }
        .table-container { background: white; padding: 20px; border-radius: 10px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); }
        .btn-custom { background-color: #28a745; color: white; border: none; padding: 10px 15px; border-radius: 5px; transition: background-color 0.3s ease; }
        .btn-custom:hover { background-color: #218838; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <div class="container">
    <h2 class="text-center">Add Books</h2>

    <asp:Label ID="lblMessage" runat="server" CssClass="text-success" />

    <div class="table-container">
        <asp:GridView ID="gvBooks" runat="server" CssClass="table table-bordered table-striped" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="BookId" HeaderText="Book ID" />
                <asp:BoundField DataField="BookName" HeaderText="Book Name" />
                <asp:BoundField DataField="BookType" HeaderText="Book Type" />
                <asp:BoundField DataField="BookLevel" HeaderText="Book Level" />
            </Columns>
        </asp:GridView>
    </div>

    <h3 class="mt-4">Add New Book</h3>
    <div>
        <asp:TextBox ID="txtBookId" runat="server" CssClass="form-control mb-2" placeholder="Book ID"></asp:TextBox>
        <asp:TextBox ID="txtBookName" runat="server" CssClass="form-control mb-2" placeholder="Book Name"></asp:TextBox>
        <asp:TextBox ID="txtBookType" runat="server" CssClass="form-control mb-2" placeholder="Book Type"></asp:TextBox>
        <asp:TextBox ID="txtBookLevel" runat="server" CssClass="form-control mb-2" placeholder="Book Level"></asp:TextBox>
        <asp:Button ID="btnAddBook" runat="server" CssClass="btn btn-success" Text="Add Book" OnClick="btnAddBook_Click" />
    </div>
</div>
        </div>
    </form>
</body>
</html>
