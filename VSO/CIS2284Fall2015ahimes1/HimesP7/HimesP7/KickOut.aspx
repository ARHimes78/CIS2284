<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KickOut.aspx.cs" Inherits="KickOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <header id="roleheader">Kick a user off this site!</header>
            <div id="rolecontent">
                <p>
                    <asp:ListBox ID="lsbRemoveUser" runat="server"></asp:ListBox>
                </p>
                <p>
                    <asp:Button ID="btnDeleteUser" runat="server" Text="Delete User" OnClick="btnDeleteUser_Click" />
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                </p>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

