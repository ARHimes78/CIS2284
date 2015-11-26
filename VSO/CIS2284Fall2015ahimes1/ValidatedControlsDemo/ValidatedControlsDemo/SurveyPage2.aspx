<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SurveyPage2.aspx.cs" 
    Inherits="ValidatedControlsDemo.SurveyPage2"%>
<%@ PreviousPageType VirtualPath="~/SurveyPage1.aspx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Image ID="Image1" runat="server" AlternateText="No Image" 
                Width="400" Height="300"/>
        </p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
        </p>
    </div>
    </form>
</body>
</html>
