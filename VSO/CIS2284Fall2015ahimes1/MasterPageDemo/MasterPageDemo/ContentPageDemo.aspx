<%@ Page Title="ContentPageDemo" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContentPageDemo.aspx.cs" Inherits="MasterPageDemo.ContentPageDemo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Please enter your name.</p>
    <p>
        <asp:Button ID="ButtonName" runat="server" Text="Submit" OnClick="ButtonName_Click" />
    </p>
    <p>
        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="LabelWelcome" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        Your GUID number from the master page is:
        <asp:Label ID="lblContentGUID" runat="server" Text=""></asp:Label>
    </p>
</asp:Content>

