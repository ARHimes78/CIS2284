<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NormalPage.aspx.cs" Inherits="AjaxDemo.NormalPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div>
            <p>
                <asp:Label ID="lblPostBack" runat="server" Text=""></asp:Label>
            </p>
            <p>
                <asp:Label ID="lblButton1" runat="server" Text=""></asp:Label>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            </p>
            <p>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <p>
                            <asp:Label ID="lblButton2" runat="server" Text=""></asp:Label>
                        </p>

                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </p>
            <p>
                <asp:Button ID="Button2" runat="server" Text="Click to get machine time using AJAX" OnClick="Button2_Click" />
            </p>
        </div>
    </form>
</body>
</html>
