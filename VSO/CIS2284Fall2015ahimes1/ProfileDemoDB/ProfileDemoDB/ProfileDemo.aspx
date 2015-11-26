<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileDemo.aspx.cs" Inherits="ProfileDemoDB.ProfileDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Hello from profile demo.</h1>
        <p>UserName: <asp:Label ID="lblUserName" runat="server" Text="name"></asp:Label></p>
        <p>Current Color: <asp:Label ID="lblColor" runat="server" Text="color"></asp:Label></p>
    </div>
    </form>
</body>
</html>
