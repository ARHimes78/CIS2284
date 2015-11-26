<%@ Page Title="Profile Test" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Page4.aspx.cs" Inherits="Page4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h1>Hello World!</h1>
            <p>
                Text to add to profile:
        <asp:TextBox ID="txbToProfile" runat="server"></asp:TextBox>
            </p>
            <p>
                Username:
        <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
            </p>
            <p>
                ToString() from ProfileTest.cs:
        <asp:Label ID="lblStringTest" runat="server" Text=""></asp:Label>
            </p>
            <p>
                Last input:
        <asp:Label ID="lblInput" runat="server" Text=""></asp:Label>
            </p>
            <p>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Style="height: 26px" />
            </p>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
