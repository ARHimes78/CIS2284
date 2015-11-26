<%@ Page Title="Button Colors" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="Page1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>The button that changes colors page.</h1>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Button ID="btnPage1" runat="server" Text="Change Button Color" OnClick="btnPage1_Click" />
        </ContentTemplate>
    </asp:UpdatePanel> 
</asp:Content>