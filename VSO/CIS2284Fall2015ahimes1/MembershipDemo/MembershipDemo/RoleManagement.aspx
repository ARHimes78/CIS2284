<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleManagement.aspx.cs" Inherits="MembershipDemo.RoleManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            Add Role:
        </p>
        <p>
            <asp:TextBox ID="txbRole" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnAddRole" runat="server" Text="Add" OnClick="btnAddRole_Click" style="height: 26px" />
        </p>
        <p>
            Roles Defined: 
        </p>
        <p>
            <asp:ListBox ID="lbRoles" runat="server" SelectionMode="Multiple"></asp:ListBox>
        </p>
        <p>
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
        </p>
    </div>
    </form>
</body>
</html>
