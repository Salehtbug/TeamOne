<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MeetingRooms.aspx.cs" Inherits="TeamOne.MeetingRooms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meeting Rooms</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        .container {
            margin-top: 50px;
        }
        .table-container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
             background: rgba(176, 10, 30, 0.3);
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="container">
        <h2 class="text-center">Meeting Rooms</h2>
        <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" />

        <div class="table-container">
            <asp:GridView ID="gvRooms" runat="server" CssClass="table table-bordered table-striped" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="RoomId" HeaderText="Room ID" />
                    <asp:BoundField DataField="RoomName" HeaderText="Room Name" />
                    <asp:BoundField DataField="RoomLocation" HeaderText="Room Location" />
                    <asp:BoundField DataField="RoomCapacity" HeaderText="Room Capacity" />
                </Columns>
            </asp:GridView>
        </div>

        <br>
        <asp:Button ID="btnReserveRoom" runat="server" CssClass="btn btn-custom" Text="Reserve Meeting Room" OnClick="btnReserveRoom_Click" />
    </div>
        </div>
    </form>
</body>
</html>
