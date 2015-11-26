<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersByRole.aspx.cs" Inherits="MembershipDemo.UsersByRole" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            Roles:
        </p>
        <p>
            <asp:DropDownList ID="ddlRoles" 
                runat="server" 
                OnSelectedIndexChanged="ddlRoles_SelectedIndexChanged" 
                AutoPostBack="true">

            </asp:DropDownList>
        </p>
        <p>
            Users in roles:
        </p>
        <p>
            <asp:ListBox ID="lbUsersInRole" runat="server" SelectionMode="Multiple"></asp:ListBox>
        </p>
        <p>
            Users:
        </p>
        <p>
            <asp:DropDownList ID="ddlUsers" runat="server"></asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="btnAddUser" runat="server" Text="Add User" OnClick="btnAddUser_Click"/>
        </p>
        <p>
            <asp:Button ID="btnRemove" runat="server" Text="Remove user" OnClick="btnRemove_Click"/>
        </p>
    </div>
    </form>
</body>
</html>
