<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewDemo.aspx.cs" Inherits="DatabaseDemo.GridViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:SqlDataSource ID="SqlDataSource1" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:DemoDBConnection %>" 
            SelectCommand="SELECT * FROM [tblEmployees]">
        </asp:SqlDataSource>
        <p>
            <asp:GridView ID="GridView1" runat="server" 
                AutoGenerateColumns="False" 
                DataKeyNames="pkEmployeeID" 
                DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="pkEmployeeID" HeaderText="pkEmployeeID" InsertVisible="False" ReadOnly="True" SortExpression="pkEmployeeID" />
                    <asp:BoundField DataField="fkSupervisorID" HeaderText="fkSupervisorID" SortExpression="fkSupervisorID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                </Columns>
            </asp:GridView>
        </p>
        
    </div>
    </form>
</body>
</html>
