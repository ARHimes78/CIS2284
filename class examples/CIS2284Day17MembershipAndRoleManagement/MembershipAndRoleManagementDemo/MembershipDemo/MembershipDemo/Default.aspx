<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MembershipDemo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login or Logout</title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
             <asp:LoginStatus ID="LoginStatus1" Runat="server" />
        </p>
        <p>
            <asp:LoginName ID="LoginName1" Runat="server" Font-Bo1d="True" Font-Size="XX-Large" />
        </p>  
        <p>
            There are <asp:Label ID="LabelUsers" runat="server" Text="TBD"></asp:Label> users online!
        </p>
    </form>
</body>
</html>
