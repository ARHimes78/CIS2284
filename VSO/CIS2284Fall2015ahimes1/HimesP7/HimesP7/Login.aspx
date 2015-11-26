<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>HimesP7 Website</h2>

            <p>
                <asp:Image ID="imgLogin" runat="server" ImageUrl="/Images/logo.png" />
            </p>
            <pre style="font-style: italic; color:#008800">
For Admin privileges, log in as:
User Name: a 
Password: asdfjkl;

Admin can access "Admins only!" pages.
            </pre>
            <p>
                <asp:Login ID="Login1" runat="server" OnLoggedIn="Login1_LoggedIn"></asp:Login>
            </p>
            <p>
                <asp:Button ID="btnLoginAnon" runat="server" Text="Enter site without logging in" OnClick="btnLoginAnon_Click"/>
            </p>
            <p>
                <asp:Button ID="btnNewAccount" runat="server" Text="Create New Account" PostBackUrl="~/NewAccount.aspx" />
            </p>
        </div>
    </form>
</body>
</html>
