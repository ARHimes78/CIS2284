<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateProgressDemo.aspx.cs" Inherits="AjaxDemo.UpdateProgressDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" DisplayAfter="5000">
            <ProgressTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/ProgressGif1.gif" Height="20" Width="20" /> 
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional"> 
            <ContentTemplate> 
                <asp:Label ID="Label1" runat="server"></asp:Label> 
            </ContentTemplate> 
            <Triggers> 
                    <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" /> 
            </Triggers> 
        </asp:UpdatePanel>
        <br /> <br /> 
        <asp:Button ID="Button1" runat="server"  Text="Click to initiate async request" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
