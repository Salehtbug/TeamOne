<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="TeamOne.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
 <style>
     /* Container for all cards */
     .card-container {
         display: flex;
         justify-content: space-around;
         flex-wrap: wrap;
         margin: 20px;
     }

     /* Card Styling */
     .card {
         margin: 10px;
         border: 1px solid black;
         border-radius: 10px;
         width: 250px;
         padding: 10px;
         text-align: center;
     }

     /* Button Styling */
     .btn {
         display: inline-block;
         padding: 10px 15px;
         font-size: 14px;
         font-weight: bold;
         text-align: center;
         text-decoration: none;
         background: rgba(176, 10, 30, 0.3);
         border: none;
         border-radius: 5px;
         cursor: pointer;
         transition: background-color 0.3s ease;
     }

     .btn:hover {
         background: rgba(110, 3, 15, 0.3);
     }

     @media (max-width: 768px) {
         .card-container {
             flex-direction: column;
             align-items: center;
         }
     }
 </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                     <div class="container mt-5">
    <h1 class="text-center">Admin Dashboard</h1>
    <div class="card-container">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Borrow a Book</h5>
                <p class="card-text">Lorem ipsum dolor sit amet consectetur.</p>
                <asp:Button ID="btnBorrowBook" runat="server" CssClass="btn btn-primary" Text="Borrow a Book" OnClick="btnBorrowBook_Click" />
            </div>
        </div>

       
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Add Books</h5>
                <p class="card-text">Lorem ipsum dolor sit amet consectetur.</p>
                <asp:Button ID="btnSeeAllBooks" runat="server" CssClass="btn btn-primary" Text="Add a Book" OnClick="btnSeeAllBooks_Click" />
            </div>
        </div>

        
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Delete Books</h5>
                <p class="card-text">Lorem ipsum dolor sit amet consectetur.</p>
                <asp:Button ID="btnFeedback" runat="server" CssClass="btn btn-primary" Text="Delete a Book" OnClick="btnFeedback_Click" />
            </div>
        </div>

       
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Edit Books</h5>
                <p class="card-text">Lorem ipsum dolor sit amet consectetur.</p>
                <asp:Button ID="btnReserveRoom" runat="server" CssClass="btn btn-primary" Text="Edit a Book" OnClick="btnReserveRoom_Click" />
            </div>
        </div>
    </div>
</div>
        </div>
    </form>
</body>
</html>
