<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Expressions.aspx.cs" Inherits="ASPXDemo.Expressions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" 
            Text="<%$ AppSettings:ButtonTitle %>" />
        <asp:Button ID="Button2" runat="server" Text="Button" />
        <p>
            <asp:Label ID="Label1" runat="server" Text="<%$ Resources:SampleResources, Message1 %>"></asp:Label>
        </p>
    </div>
    </form>    
</body>
</html>
