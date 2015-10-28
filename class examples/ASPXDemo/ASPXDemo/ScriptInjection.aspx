<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScriptInjection.aspx.cs" Inherits="ASPXDemo.ScriptInjection" validateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </p>
        <p>
            <%: TextBox1.Text  %>
        </p>        
    </div>
    </form>
</body>
</html>
