﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="HimesP4.WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Welcome, click button to continue.</h1>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Go to Calculator" PostBackUrl="~/CalculatorWebForm.aspx"/>
        </p>
    </div>
    </form>
</body>
</html>
