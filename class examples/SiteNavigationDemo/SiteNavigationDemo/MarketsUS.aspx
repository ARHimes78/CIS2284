<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarketsUS.aspx.cs" Inherits="SiteNavigationDemo.MarketUS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" ParentLevelsDisplayed="2">
            <PathSeparatorTemplate> <img src="Images/SmileyFaceSeperator.png" /> </PathSeparatorTemplate>
            
            <PathSeparatorStyle Font-Bold="true" Font-Names="Verdana" ForeColor ="#663333"
                BackColor ="#ccccc66"  />
           
        </asp:SiteMapPath>
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1"></asp:TreeView>
        <p>
            <asp:TextBox ID="txbText" runat="server"></asp:TextBox>
        </p>  
        <p>
            <asp:TextBox ID="txbUrl" runat="server"></asp:TextBox>
        </p>    
        <p>
            <asp:Button ID="btnAddNode" runat="server" Text="Button" OnClick="btnAddNode_Click"/>
        </p>  
    </div>
    </form>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />

</body>
</html>
