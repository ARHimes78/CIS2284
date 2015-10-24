<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="HimesP5.Page3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    The reverse text page.
    </br>
    <asp:TextBox ID="txbPage3" runat="server"></asp:TextBox>
    <asp:Button ID="btnPage3" runat="server" Text="Reverse text!" OnClick="btnPage3_Click" />
</asp:Content>
