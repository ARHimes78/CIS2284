<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hardware.aspx.cs" Inherits="SiteNavigationDemo.Hardware" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnExpand" runat="server" Text="Expnd All" OnClick="btnExpand_Click" />
        <asp:Button ID="btnCollapse" runat="server" Text="Collapse All" OnClick="btnCollapse_Click" />
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="XmlDataSource1" 
             CollapseImageUrl ="~/Images/Collapse.png"
             ExpandImageUrl="~/Images/Expand.png"
             LeafNodeStyle-ImageUrl="~/Images/SmileyFaceSeperator.png" OnDataBound="TreeView1_DataBound"
             >
            <DataBindings>
                <asp:TreeNodeBinding DataMember="Hardware" Text="Computer Hardware" />
                <asp:TreeNodeBinding DataMember="Item" TextField="Category" />
                <asp:TreeNodeBinding DataMember ="Option" TextField="Choice" />
            </DataBindings>
            <LeafNodeStyle ImageUrl="~/Images/SmileyFaceSeperator.png" />
        </asp:TreeView>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Hardware.xml"></asp:XmlDataSource>
    </div>
    </form>
</body>
</html>
