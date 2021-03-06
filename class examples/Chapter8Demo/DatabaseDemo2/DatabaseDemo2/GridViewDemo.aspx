﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewDemo.aspx.cs" Inherits="DatabaseDemo2.GridViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:GridView 
                ID="GridViewEmployees" 
                AutoGenerateColumns ="False" 
                runat="server" 
                DataKeyNames="pkEmployeeID" 
                DataSourceID="SqlDataSourceEmployees"
                DataKeyName ="pkEmployeeID"
                OnRowDataBound="GridViewEmployees_RowDataBound"
                EmptyDataText="No Employees in the Table!"
                AllowSorting ="True" 
                Width="268px"
                AutoGenerateEditButton ="True">
                <Columns>
                    <asp:BoundField DataField ="Name" HeaderText ="Employee Name" SortExpression ="Name"/>
                    <asp:BoundField DataField ="DepartmentName" HeaderText ="Department Head Of" NullDisplayText ="Not a department head." SortExpression ="DepartmentName" ReadOnly ="true"/>
                    <asp:HyperLinkField DataNavigateUrlFields="website" DataTextField="website" HeaderText="Website" />
                    <asp:CommandField ShowHeader="True" HeaderText="Command" ShowEditButton="True" />
                </Columns>            
                <EmptyDataTemplate>
                    No employees!
                    <asp:Button ID="Button1" runat="server" Text="Add Employee" />
                </EmptyDataTemplate>
            </asp:GridView>
            
            <asp:SqlDataSource 
                ID="SqlDataSourceEmployees" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM tblEmployees e LEFT OUTER JOIN tblDepartments d on d.fkDepartmentHeadID = e.pkEmployeeID" 
                UpdateCommand="UPDATE tblEmployees SET Name = @Name WHERE pkEmployeeID = @pkEmployeeID">
                <UpdateParameters>
                    <asp:Parameter Name="pkEmployeeID" Type ="Int32" />
                    <asp:Parameter Name="Name" Type ="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceEmployees" 
                                DataTextField="Name" DataValueField="pkEmployeeID">
                            </asp:DropDownList>
        </p>
        <p>
            <asp:GridView 
                ID="GridViewDepartments" 
                AutoGenerateColumns ="False" 
                runat="server" 
                DataKeyNames="pkDepartmentID" 
                DataSourceID="SqlDataSourceDeparments"
                DataKeyName ="pkDepartmentID"
                EmptyDataText="No Departments in the Table!"
                AllowSorting ="True" 
                Width="268px"
                AutoGenerateEditButton ="True"
                AutoGenerateDeleteButton ="True"
                OnRowDataBound ="GridViewDepartments_RowDataBound"
                OnRowUpdating ="gridviewdepartments_rowupdating"
                >
                <Columns>
                    <asp:BoundField DataField ="DepartmentName" HeaderText ="Department Name" SortExpression ="DepartmentName"/>
                    <asp:TemplateField HeaderText="Department Head" SortExpression="Name">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceDDL" 
                                DataTextField="Name" DataValueField="pkEmployeeID">
                            </asp:DropDownList>
                            <asp:SqlDataSource 
                                ID="SqlDataSourceDDL" 
                                runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT pkEmployeeID, Name FROM tblEmployees">                           
                            </asp:SqlDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowHeader="True" HeaderText="Command" ShowEditButton="True"  ShowDeleteButton="true"/>
                </Columns>            
                <EmptyDataTemplate>
                    No Departments!
                    <asp:Button ID="Button1" runat="server" Text="Add Department" />
                </EmptyDataTemplate>
            </asp:GridView>

            <asp:SqlDataSource 
                ID="SqlDataSourceDeparments" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM tblDepartments d LEFT OUTER JOIN tblEmployees e on d.fkDepartmentHeadID = e.pkEmployeeID" 
                DeleteCommand ="DELETE From tblDepartments WHERE pkDepartmentID = @pkDepartmentID"                
                UpdateCommand="UPDATE tblDepartments SET DepartmentName = @DepartmentName, fkDepartmentHeadID = @fkDepartmentHeadID WHERE pkDepartmentID = @pkDepartmentID">
                <DeleteParameters>
                    <asp:Parameter Name ="pkDepartmentID" Type ="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DepartmentName" Type ="String" />
                    <asp:Parameter Name="fkDepartmentHeadID" Type ="Int32" /> 
                    <asp:Parameter Name="pkDepartmentID" Type ="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </div>
    </form>
</body>
</html>

                    