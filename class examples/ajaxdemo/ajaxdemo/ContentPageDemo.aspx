<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContentPageDemo.aspx.cs" Inherits="AjaxDemo.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Label ID="LabelPostBack" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Label ID="LabelButton1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="click to get maching time" OnClick="Button1_Click" />
    </p>
    <p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <p>
                <asp:Label ID="LabelButton2" runat="server" Text="Label"></asp:Label>
            </p>
                
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID ="Button2" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" Text="Click to get machine tmime using AJAX" OnClick="Button2_Click" />
    </p>
</asp:Content>
