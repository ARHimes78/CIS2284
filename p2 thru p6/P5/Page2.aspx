<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="HimesP5.Page2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    The happy/sad page.
    <br/>
    <asp:CheckBox ID="cxbPage2" runat="server" OnCheckedChanged="cxbPage2_CheckedChanged" Text=":|" AutoPostBack="true"/>
</asp:Content>
