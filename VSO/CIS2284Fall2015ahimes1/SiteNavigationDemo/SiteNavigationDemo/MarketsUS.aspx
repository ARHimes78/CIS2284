<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarketsUS.aspx.cs" Inherits="SiteNavigationDemo.MarketsUS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" ParentLevelsDisplayed="2">
            <PathSeparatorTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl="Images\scribble.png" />
            </PathSeparatorTemplate>
            <PathSeparatorStyle Font-Bold="true" Font-Names="Verdana" ForeColor="#663333" BackColor="#cccc66"></PathSeparatorStyle> 
        </asp:SiteMapPath>

        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1">
        </asp:TreeView>
    </div>
        
    </form>
</body>
</html>
