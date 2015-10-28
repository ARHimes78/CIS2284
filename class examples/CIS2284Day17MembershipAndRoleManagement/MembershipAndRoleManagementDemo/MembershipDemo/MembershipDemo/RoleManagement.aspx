<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleManagement.aspx.cs" Inherits="MembershipDemo.RoleManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Role Manager</title> 
</head> 
<body> 
    <form id="form1" runat="server"> 
        <h1>Role Manager</h1>
        Add Role:<br /> 
        <asp:TextBox ID="TextBox1" Runat="Server"></asp:TextBox> 
        <p>
            <asp:Button ID="Button1" Runat="server" Text="Add Role to Application" onClick="Button1_Click" />
        </p> 
        Roles Defined:<br /> 
        <asp:ListBox ID="ListBox1" Runat="Server" SelectionMode="Multiple" > </asp:ListBox> 
        <p>
            <asp:Button ID="ButtonDelete" runat="server" Text="Delete" onClick="ButtonDelete_Click"/>
        </p>       
    </form> 
</body> 
</html>  
