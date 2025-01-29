<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBook.aspx.cs" Inherits="TeamOne.EditBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit a Book</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        .container { margin-top: 50px; }
        .form-group { margin-bottom: 15px; }
        .search-container {
            position: relative;
            width: 300px;
            margin: 20px auto;
        }
         .search-container input {
            width: 100%;
            height: 50px;
            border: none;
            padding: 10px;
            border-radius: 30px;
            font-size: 16px;
            text-align: center;
            outline: none;
            background: crimson;
            color: white;
            transition: all 0.5s;
        }

        .search-container input:focus {
            width: 100%;
            cursor: text;
        }

        .search-results {
            position: absolute;
            width: 100%;
            background: white;
            border-radius: 5px;
            max-height: 200px;
            overflow-y: auto;
            display: none;
        }

        .search-results div {
            padding: 10px;
            cursor: pointer;
            border-bottom: 1px solid #ddd;
        }

        .search-results div:hover {
            background: #f1f1f1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
        <h2 class="text-center">Edit a Book</h2>

        <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" />

        <div class="form-group">
            <label for="ddlBooks">Select Book:</label>
            <asp:DropDownList ID="ddlBooks" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlBooks_SelectedIndexChanged"></asp:DropDownList>
        </div>

        <div class="form-group">
            <label for="txtBookId">Book ID:</label>
            <asp:TextBox ID="txtBookId" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtBookName">Book Name:</label>
            <asp:TextBox ID="txtBookName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtBookType">Book Type:</label>
            <asp:TextBox ID="txtBookType" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtBookLevel">Book Level:</label>
            <asp:TextBox ID="txtBookLevel" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <asp:Button ID="btnUpdateBook" runat="server" CssClass="btn btn-warning" Text="Update Book" OnClick="btnUpdateBook_Click" />
    </div>
        </div>
    </form>
</body>
</html>