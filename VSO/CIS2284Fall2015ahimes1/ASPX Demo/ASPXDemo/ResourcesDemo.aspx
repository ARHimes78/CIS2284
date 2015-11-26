<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResourcesDemo.aspx.cs" Inherits="ASPXDemo.ResourcesDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="<%$ Resources:SampleResources, Message1 %>"></asp:Label>
    </div>
    </form>
</body>
</html>
