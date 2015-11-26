<%@ Page Title="Users by Role" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <header id="roleheader">Users by Role</header>
            <div id="rolecontent">
                <table>
                    <tr>
                        <td>
                            <p>
                                Roles:
                            </p>
                            <p>
                                <asp:ListBox ID="lsbRoles" runat="server" OnSelectedIndexChanged="lsbRoles_SelectedIndexChanged" AutoPostBack="true"></asp:ListBox>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>
                                Users by role:
                            </p>
                            <p>
                                <asp:ListBox ID="lsbUsersByRole" runat="server"></asp:ListBox>
                            </p>
                            <p>
                                <asp:Button ID="btnRemove" runat="server" Text="Remove user from role" OnClick="btnRemove_Click" />
                            </p>
                            <p>
                                <asp:Label ID="lblRemoveError" runat="server" Text=""></asp:Label>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>
                                Users:
                            </p>
                            <p>
                                <asp:ListBox ID="lsbUsers" runat="server"></asp:ListBox>
                            </p>
                            <p>
                                <asp:Button ID="btnAdd" runat="server" Text="Add user to role" OnClick="btnAdd_Click" />
                            </p>
                            <p>
                                <asp:Label ID="lblAddError" runat="server" Text=""></asp:Label>
                            </p>
                        </td>
                    </tr>
                </table>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

