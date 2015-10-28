<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAccountProgramatic.aspx.cs" Inherits="MembershipDemo.NewUserProgramatic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Creating a User</title>
</head>
<body>
    <form id="form1" runat ="server"> 
        <h1>Create User</h1> 
        <p>Username<br /> 
            <asp:TextBox ID="TextBox1" Runat="server"></asp:TextBox> 
        </p> 
        <p>Password<br /> 
            <asp:TextBox ID="TextBox2" Runat="server" TextMode="Password">
            </asp:TextBox>
        </p> 
        <p> 
            <asp:Button ID="Button1" Runat="server" Text="Create User" onClick="Button1_Click" /> 
        </p> 
        <p> 
            <asp:Label ID="Label1" Runat="server"></asp:Label> 
        </p>
    </form> 
</body>
</html>
