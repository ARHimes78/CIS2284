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
            <asp:Button ID="btnPostBack" runat="server" Text="Button" 
                PostBackUrl="~/MeetingRoomInformation.aspx"/>
        </p>
        <p>
            <asp:DropDownList ID="ddlMeetingRooms" runat="server" 
                OnSelectedIndexChanged="ddlMeetingRooms_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>Sacher</asp:ListItem>
                <asp:ListItem>Haweika</asp:ListItem>
                <asp:ListItem>Hummel</asp:ListItem>
                <asp:ListItem>Pruckel</asp:ListItem>
                <asp:ListItem>Landmann</asp:ListItem>
                <asp:ListItem>Sperl</asp:ListItem>
                <asp:ListItem>Alt Wien</asp:ListItem>
                <asp:ListItem>Elles</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="lblSelectedRoom" runat="server" Text="Label"></asp:Label>
        </p>  
    </div>     
    </form>
</body>
</html>
