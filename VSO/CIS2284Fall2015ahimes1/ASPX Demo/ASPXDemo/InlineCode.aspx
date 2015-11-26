<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InlineCode.aspx.cs" Inherits="ASPXDemo.InlineCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%
            int a = 3;
            int b = 4;
            int c = a + b;
            Response.Write(c);
        %>
    </div>
    </form>
</body>
</html>
