<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuXMLDemo.aspx.cs" Inherits="SiteNavigationDemo.MenuXMLDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="Menu1" runat="server" DataSourceID="XmlDataSource1" OnMenuItemClick="Menu1_MenuItemClick">
            <DataBindings>
                <asp:MenuItemBinding DataMember ="Item" TextField ="Category" />
                <asp:MenuItemBinding DataMember ="Option" TextField="Choice" />
            </DataBindings>
        </asp:Menu>
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
    </div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Hardware.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
