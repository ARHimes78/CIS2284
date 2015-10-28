<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersByRole.aspx.cs" Inherits="MembershipDemo.UsersByRole" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title)>Role Manager</title)  
</head> 
    <body> 
        <form id="form1" runat="server">
            Roles:  
            <asp:DropDownList ID="DropDownListRoles" Runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListRoles_SelectedIndexChanged"> </asp:DropDownList>  
            <br /><br />  
            <asp:ListBox ID="ListBoxUsersInRole" Runat="Server" SelectionMode="Multiple" > </asp:ListBox>
            <p>
                <asp:Button ID="ButtonRemove" runat="server" Text="Remove User(s) From Role" OnClick="ButtonRemove_Click" />
            </p>
            <p>
                <asp:DropDownList ID="DropDownListUsers" runat="server"></asp:DropDownList>
            </p>
            <p>
                <asp:Button ID="ButtonAddUser" runat="server" Text="Add User To Role" OnClick="ButtonAddUser_Click" />
            </p>
        </form>  
    </body> 
</html>
