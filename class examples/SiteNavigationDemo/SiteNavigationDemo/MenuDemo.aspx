<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuDemo.aspx.cs" Inherits="SiteNavigationDemo.MenuDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DataSourceID="SiteMapDataSource1" 
            DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" 
            StaticSubMenuIndent="10px" Orientation ="Horizontal">
            <DynamicHoverStyle  BackColor="Red" ForeColor="White"  />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="Red" />
            <DynamicSelectedStyle BackColor="Red" />
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    </div>


    </form>
</body>
</html>
