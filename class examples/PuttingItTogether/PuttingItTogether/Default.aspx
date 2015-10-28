<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PuttingItTogether.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        There are <asp:Label ID="LabelUsers" runat="server" Text=""></asp:Label> users online!
    </p>
    <p>
        This is the default page.
    </p>
</asp:Content>
