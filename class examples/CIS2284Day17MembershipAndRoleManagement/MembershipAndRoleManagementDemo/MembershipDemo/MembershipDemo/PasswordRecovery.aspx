<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="MembershipDemo.PasswordRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:PasswordRecovery ID="PasswordRecovery1" Runat="server"> 
            <MailDefinition From="user@example.com"> </MailDefinition> 
        </asp:PasswordRecovery> 
    </div>
    </form>
</body>
</html>
