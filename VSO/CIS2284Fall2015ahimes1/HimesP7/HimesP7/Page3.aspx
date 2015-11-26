<%@ Page Title="Reverse Text" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Page3.aspx.cs" Inherits="Page3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>The reverse text page.</h1>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:TextBox ID="txbPage3" runat="server"></asp:TextBox>
            <asp:Button ID="btnPage3" runat="server" Text="Reverse text!" OnClick="btnPage3_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>