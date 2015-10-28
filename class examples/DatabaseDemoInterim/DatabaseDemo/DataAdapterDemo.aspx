<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataAdapterDemo.aspx.cs" Inherits="DatabaseDemo.DataAdapterDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:DropDownList ID="ddlDepartments" runat="server"
                DataTextField ="DepartmentName" 
                DataValueField="pkDepartmentID" 
                AutoPostBack="True" 
                OnSelectedIndexChanged="ddlDepartments_SelectedIndexChanged">

            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="lblDDLResults" runat="server" Text=""></asp:Label>
        </p>
    </div>
    </form>
</body>
</html>
