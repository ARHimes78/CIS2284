<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsersByRole.aspx.cs" Inherits="PuttingItTogether.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Roles: 
    </p>
    <p>
        <asp:DropDownList ID="DropDownListRoles" runat="server" 
            AutoPostBack="true" 
            OnSelectedIndexChanged="DropDownListRoles_SelectedIndexChanged"
            ></asp:DropDownList>
    </p>
    <p>
        Users In Role:
    </p>
    <p>
        <asp:ListBox ID="ListBoxUsersInRole" runat="server" SelectionMode="Multiple">
        </asp:ListBox>
    </p>
    <p>
        <asp:Button ID="ButtonRemove" runat="server" Text="Remove User(s) From Role" OnClick="ButtonRemove_Click" />
    </p>
    <p>
        Users:
    </p>
    <p>
        <asp:DropDownList ID="DropDownListUsers" runat="server"></asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="ButtonAddUser" runat="server" Text="Add User To Role" OnClick="ButtonAddUser_Click" />
    </p>
</asp:Content>
