<%@ Page Title="Happy/Sad" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Page2.aspx.cs" Inherits="Page2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>The happy/sad page.</h1>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:CheckBox ID="cxbPage2" runat="server" OnCheckedChanged="cxbPage2_CheckedChanged" Text=":|" AutoPostBack="true" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>