<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NormalPage.aspx.cs" Inherits="AjaxDemo.NormalPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <p>
            <asp:Label ID="LabelPostBack" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="LabelButton1" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="click to get maching time" OnClick="Button1_Click" />
        </p>
        <p>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <p>
                    <asp:Label ID="LabelButton2" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    <asp:Button ID="Button2" runat="server" Text="Click to get machine tmime using AJAX" OnClick="Button2_Click" />
                </p>
            </ContentTemplate>
        </asp:UpdatePanel>

        </p>
    </div>
    </form>
</body>
</html>
