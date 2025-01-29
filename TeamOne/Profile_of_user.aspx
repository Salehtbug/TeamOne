<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile_of_user.aspx.cs" Inherits="TeamOne.Profile_of_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Profile User</title>
    <link rel="stylesheet" href="CSS/profile.css" />
    <style>
        @import url("https://fonts.googleapis.com/css?family=Lato");

        * { margin: 0; padding: 0; box-sizing: border-box; font-size: 16px; font-family: "Lato", sans-serif; }
        h1 { margin: 20px; text-align: center; font-size: 34px; }

        .settings-message { font-size: 20px; text-align: center; }
        .hidden { display: none; }

        form { display: flex; flex-direction: column; justify-content: center; align-items: center; max-width: 900px; width: 100%; margin: auto; padding: 20px; }
        
        .profile-pic__container { border: 3px solid #333; border-radius: 100%; width: 200px; height: 200px; background-size: cover; background-position: center; text-align: center; line-height: 200px; cursor: pointer; }

        .input__container { display: flex; justify-content: space-between; flex-wrap: wrap; width: 100%; max-width: 600px; }
        .input__container > div { flex-basis: 48%; margin-bottom: 15px; }
        .input__container label { display: block; font-weight: bold; }
        .input__container input { width: 100%; padding: 8px; margin-top: 5px; }

        .btn { padding: 10px; border: none; cursor: pointer; margin-top: 10px; }
        .btn-primary { background: #007BFF; color: white; }
        .btn-warning { background: #FFC107; color: black; }

        /* Modal Styling */
        .modal { display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0,0,0,0.5); align-items: center; justify-content: center; }
        .modal-content { background: white; padding: 20px; border-radius: 5px; text-align: center; width: 300px; }
        .close-btn { float: right; font-size: 20px; cursor: pointer; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                  <h1>Profile User</h1>
        <div class="settings-message" id="js-message"></div>

        <!-- Profile Picture Upload -->
        <asp:FileUpload ID="fuProfilePic" runat="server" CssClass="hidden" />
        <div id="js-profile-pic" class="profile-pic__container" onclick="document.getElementById('<%= fuProfilePic.ClientID %>').click();">
            Upload Profile Pic
        </div>

        <!-- User Information -->
        <div class="input__container">
            <div class="input-container__single">
                <label for="txtName">Name:</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="input-container__single">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
            </div>
            <div class="input-container__single">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <span id="js-toggle-password" class="input-action">Display Password</span>
            </div>
        </div>

        <!-- Reset Password Button -->
        <asp:Button ID="btnResetPassword" runat="server" Text="Reset Password" CssClass="btn btn-warning" OnClientClick="openResetModal(); return false;" />

        <br />
        <asp:Button ID="btnSaveProfile" runat="server" Text="Save Profile" CssClass="btn btn-primary" OnClick="btnSaveProfile_Click" />

        <!-- Reset Password Modal -->
        <div id="resetPasswordModal" class="modal">
            <div class="modal-content">
                <span class="close-btn" onclick="closeResetModal()">&times;</span>
                <h3>Reset Password</h3>
                <div class="input-group">
                    <label for="txtNewPassword">New Password:</label>
                    <asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <div class="input-group">
                    <label for="txtConfirmNewPassword">Confirm Password:</label>
                    <asp:TextBox ID="txtConfirmNewPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <asp:Button ID="btnSubmitReset" runat="server" Text="Update Password" CssClass="btn btn-primary" OnClick="btnSubmitReset_Click" />
            </div>
            <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" />
<asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
<asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
<asp:Image ID="imgProfile" runat="server" Width="200px" Height="200px" CssClass="profile-pic" />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>


        </div>
    </form>

    <script>
        function openResetModal() {
            document.getElementById("resetPasswordModal").style.display = "flex";
        }

        function closeResetModal() {
            document.getElementById("resetPasswordModal").style.display = "none";
        }
    </script>
        </div>
    </form>
</body>
</html>
