<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MembershipDemo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome to home page.
        <p>
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </p>
            <p>
                Welcome
                <asp:LoginName ID="LoginName1" runat="server" />
            </p>
            <p>
                There are
                <asp:Label ID="lblUsers" runat="server" Text=""></asp:Label>
                users online.
            </p>
        </div>
    </form>
</body>
</html>
