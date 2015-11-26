<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hardware.aspx.cs" Inherits="SiteNavigationDemo.Hardware" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Hardware.xml"></asp:XmlDataSource>
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="XmlDataSource1" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowCheckBoxes="Leaf">
            <DataBindings>
                <asp:TreeNodeBinding DataMember="Hardware" Text="Computer Hardware" /> 
                <asp:TreeNodeBinding DataMember="Item" TextField="Category" />  
                <asp:TreeNodeBinding DataMember="Option" TextField="Choice" /> 
            </DataBindings>
        </asp:TreeView>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
