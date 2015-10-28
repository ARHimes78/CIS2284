<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginProg.aspx.cs" Inherits="MembershipDemo.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            Unlock User: <asp:CheckBox ID="CheckBoxUnlock" runat="server" />
        </p>
        <p>
            UserID: <asp:TextBox ID="TextBoxUserID" runat="server"></asp:TextBox>
        </p>
        <p>
            Password: <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
        </p>
        <p>
            <asp:Label ID="LabelResults" runat="server" Text=""></asp:Label>
        </p>   
    </div>
    </form>
</body>
</html>
