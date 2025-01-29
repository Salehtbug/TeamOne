<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TeamOne.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body style = "background: url('https://images.unsplash.com/photo-1485802007047-7774de7208e5?auto=compress&fit=crop&w=1800&h') no-repeat center center fixed; background-size: cover; font-family: 'Droid Serif', serif;">
    <form id="form1" runat="server">
        <div>
            <div id="container" class="bg-dark text-light p-4 rounded" style="width: 400px; margin: auto; margin-top: 100px;">
        <h2 class="text-center">Register New Account</h2>
       <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control my-2" placeholder="Username" required></asp:TextBox>
<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control my-2" placeholder="E-mail" required></asp:TextBox>
<asp:TextBox ID="txtFullName" runat="server" CssClass="form-control my-2" placeholder="Full Name" required></asp:TextBox>
<asp:TextBox ID="txtPassword" runat="server" CssClass="form-control my-2" TextMode="Password" placeholder="Password" required></asp:TextBox>
<asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control my-2" TextMode="Password" placeholder="Confirm Password" required></asp:TextBox>
<asp:Button ID="btnRegister" runat="server" CssClass="btn btn-danger w-100" Text="REGISTER" OnClick="btnRegister_Click" />
<asp:Label ID="lblMessage" runat="server" ForeColor="White"></asp:Label>

                

    </div>
        </div>
    </form>
</body>
</html>
