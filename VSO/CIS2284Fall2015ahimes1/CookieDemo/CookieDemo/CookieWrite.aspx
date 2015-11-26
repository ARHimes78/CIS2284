<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CookieWrite.aspx.cs" Inherits="CookieDemo.CookieWrite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Cookie Value:"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:CheckBox ID="CheckBox1" runat="server"/>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"/>
        </p>
    </div>
    </form>
</body>
</html>
