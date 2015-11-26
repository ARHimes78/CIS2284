<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormTest.aspx.cs" Inherits="HimesP3.WebFormTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Hello World!</h1>
        <p>
            Text to add to profile: <asp:TextBox ID="txbToProfile" runat="server"></asp:TextBox>
        </p>
        <p>
            Username: <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
        </p>
        <p>
            ToString() from ProfileTest.cs: <asp:Label ID="lblStringTest" runat="server" Text=""></asp:Label>
        </p>
        <p>
            Last input: <asp:Label ID="lblInput" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" style="height: 26px" />
        </p>
    </div>
    </form>
</body>
</html>
