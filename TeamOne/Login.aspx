<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TeamOne.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        html {
            height: 100%;
            width: 100%;
        }

        body {
            background: url("https://images.unsplash.com/photo-1485802007047-7774de7208e5?dpr=1&auto=compress,format&fit=crop&w=1800&h") 
            no-repeat center center fixed;
            background-size: cover;
            font-family: 'Droid Serif', serif;
        }

        #container {
            background: rgba(3, 3, 55, 0.5);
            width: 18.75rem;
            height: 25rem;
            margin: auto;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
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

        fieldset {
            border: 0;
            text-align: center;
        }

        input[type="submit"] {
            background: rgba(235, 30, 54, 1);
            border: 0;
            display: block;
            width: 70%;
            margin: 0 auto;
            color: white;
            padding: 0.7rem;
            cursor: pointer;
        }

        input {
            background: transparent;
            border: 0;
            border-left: 4px solid;
            border-color: #FF0000;
            padding: 10px;
            color: white;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            outline: 0;
            background: rgba(235, 30, 54, 0.3);
            border-radius: 1.2rem;
            border-color: transparent;
        }

        ::placeholder {
            color: #d3d3d3;
        }

        /* Responsive styles */
        @media all and (min-width: 481px) and (max-width: 568px) {
            #container {
                margin-top: 10%;
                margin-bottom: 10%;
            }
        }
        
        @media all and (min-width: 569px) and (max-width: 768px) {
            #container {
                margin-top: 5%;
                margin-bottom: 5%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
  <div id="container"  runat="server">
        <header>Sign In</header>
            <fieldset>
                <br />
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Username" required></asp:TextBox>
                <br /><br />
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password" required></asp:TextBox>
                <br /><br />
                <asp:Label ID="lblMessage" runat="server" ForeColor="White"></asp:Label>
                <br />
                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-danger" Text="Login" OnClick="btnLogin_Click" />
            </fieldset>
       
    </div>
        </div>
    </form>
</body>
</html>
