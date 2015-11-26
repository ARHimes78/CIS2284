<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowMeetingRooms.aspx.cs" Inherits="WebFormDemo.ShowMeetingRooms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:Button ID="btnPostBack" runat="server" Text="Button" PostBackURL="~/MeetingRoomInformation.aspx"/>
        </p>
        <p>
            <asp:DropDownList ID="ddlMeetingRooms" runat="server" OnSelectedIndexChanged="ddlMeetingRooms_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>NameOne</asp:ListItem>
                <asp:ListItem>NameTwo</asp:ListItem>
                <asp:ListItem>NameThree</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="lblSelectedRoom" runat="server" Text="Label"></asp:Label>
        </p>
    </div>
    </form>
</body>
</html>
