<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoleManagement.aspx.cs" Inherits="PuttingItTogether.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">     
    <h1>Role Manager</h1>
    Add Role:<br />
    <asp:TextBox ID="TextBoxRole" runat="server"></asp:TextBox>
    <p>
        <asp:Button ID="ButtonAddRole" runat="server" Text="Add Role"
            onClick ="ButtonAddRole_Click" />
    </p>
    Roles Defined: <br />
    <asp:ListBox ID="ListBoxRoles" runat="server" SelectionMode ="Multiple"></asp:ListBox>
    <p>
        <asp:Button ID="ButtonDelete" runat="server" Text="Delete Role" OnClick="ButtonDelete_Click" />
    </p>
</asp:Content>
