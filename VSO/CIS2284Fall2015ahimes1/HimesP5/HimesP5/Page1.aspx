<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="HimesP5.Page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    The button that changes colors page.
    <br />
    <asp:Button ID="btnPage1" runat="server" Text="Change Button Color" OnClick="btnPage1_Click"/>
</asp:Content>
