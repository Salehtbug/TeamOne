<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="TeamOne.HomePage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HomePage</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nunito:wght@300&display=swap');
        
        /* Existing styles for body, header, navbar, slideshow, and buttons */
        /* These are retained from the provided code */
        body {
            background: url("https://images.unsplash.com/photo-1485802007047-7774de7208e5?dpr=1&auto=compress,format&fit=crop&w=1800&h") no-repeat center center fixed;
            background-size: cover;
            font-family: 'Droid Serif', serif;
        }

        header {
            text-align: center;
            vertical-align: middle;
            line-height: 3rem;
            height: 3rem;
            background: rgba(3, 3, 55, 0.7);
            font-size: 1.4rem;
            color: #d3d3d3;
        }

        .navbar {
            display: flex;
            align-items: center;
            margin-top: -8px;
            height: 90px;
            background: rgba(3, 3, 55, 0.5);
            justify-content: flex-end;
        }

        .logo-text, .logo-a {
            margin-right: 36%;
            color: #fff;
            font-family: 'Bebas Neue';
            font-size: 50px;
            letter-spacing: 8px;
            text-shadow: 5px 5px #111;
        }

        .navbar a {
            text-decoration: none;
            color: #fff;
            font-size: 20px;
            font-family: 'Nunito', sans-serif;
        }

        .navbar a:hover {
            color: #808080;
        }

        .login-btn, .Register-btn {
            background: rgba(235, 30, 54, 0.3);
            width: 90px;
            height: 45px;
            margin-right: 20px;
            border-radius: 30px;
            border: none;
            color: #fff;
            font-size: 18px;
            font-family: 'Nunito', sans-serif;
            cursor: pointer;
        }
        
        /* Include the rest of the slideshow styles provided earlier */
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <header>
        <nav class="navbar">
            <a href="#" class="logo-a"><h1 class="logo-text">TeamOne</h1></a>
            <asp:Button ID="btnLogin" runat="server" CssClass="login-btn" Text="Login" OnClick="btnLogin_Click" />
            <asp:Button ID="btnRegister" runat="server" CssClass="Register-btn" Text="Register" OnClick="btnRegister_Click" />
        </nav>
    </header>
        </div>
    </form>
</body>
</html>
