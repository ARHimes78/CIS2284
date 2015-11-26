<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginViewDemo.aspx.cs" Inherits="MembershipDemo.LoginViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
        <p>
            <asp:LoginView ID="LoginView1" runat="server">
                <LoggedInTemplate>
                    Here is some REALLY important info!
                </LoggedInTemplate>
                <AnonymousTemplate>
                    Here is info everyone should know.
                </AnonymousTemplate>
                <RoleGroups>
                    <asp:RoleGroup Roles="Admins">
                        <ContentTemplate>
                            You are an admin!
                        </ContentTemplate>
                    </asp:RoleGroup>
                    <asp:RoleGroup Roles="CoolPeople">
                        <ContentTemplate>
                            You are cool!
                        </ContentTemplate>
                    </asp:RoleGroup>
                </RoleGroups>
            </asp:LoginView>
        </p>
    </div>
    </form>
</body>
</html>
