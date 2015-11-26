<%@ Page Title="Welcome to Calculator" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Page5.aspx.cs" Inherits="Page5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h1>Welcome, click button to continue.</h1>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Go to Calculator" PostBackUrl="~/CalculatorWebForm.aspx" />
            </p>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>