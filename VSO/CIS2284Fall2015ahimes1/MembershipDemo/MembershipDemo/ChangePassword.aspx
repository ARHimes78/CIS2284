<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="MembershipDemo.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:LoginStatus ID="LoginStatus1" Runat="server" />
        </p>
        <p>
            <asp:ChangePassword ID="ChangePassword1" runat="server" 
                SuccessPageUrl="~/Default.aspx"></asp:ChangePassword>
        </p>
    </div>
    </form>
</body>
</html>
