<%@ Page Title="Role Management" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RoleManagement.aspx.cs" Inherits="RoleManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="Roles.css" type="text/css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <header id="roleheader">Role Managment</header>
            <div id="rolecontent">
                <p>
                    <asp:TextBox ID="txbAddRole" runat="server"></asp:TextBox>
                    <asp:Button ID="btnAddRole" runat="server" Text="Add a role" OnClick="btnAddRole_Click" />
                </p>
                <p>
                    <asp:ListBox ID="lsbDeleteRole" runat="server" ></asp:ListBox>
                    <asp:Button ID="btnDeleteRole" runat="server" Text="Delete a role" OnClick="btnDeleteRole_Click" />
                </p>
                <p>
                    <asp:Label ID="lblDeleteError" runat="server" Text=""></asp:Label>
                </p>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

