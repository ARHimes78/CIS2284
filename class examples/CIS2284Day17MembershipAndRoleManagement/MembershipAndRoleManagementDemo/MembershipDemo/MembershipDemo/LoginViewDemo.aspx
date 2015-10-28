<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginViewDemo.aspx.cs" Inherits="MembershipDemo.LoginViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>changing the view</title> 
</head> 
<body>  
    <form id="form1" runat="server">  
        <asp:LoginStatus ID="LoginStatus1" Runat="server" />  
        <p>
            <asp:LoginView ID="LoginView1" Runat="server"> 
                <LoggedinTemplate>
                    Here is some REALLY important information that you should know
                    about all those people that are not authenticated! 
                </LoggedinTemplate> 
                <AnonymousTemplate> 
                    Here is some basic information for you.
                </AnonymousTemplate> 
                <RoleGroups>  
                    <asp:RoleGroup  Roles="Admins"> 
                        <ContentTemplate> You are an Admin! </ContentTemplate> 
                    </asp:RoleGroup> 
                    <asp:RoleGroup Roles="CoolPeop1e"> 
                        <ContentTemplate> You are cool! </ContentTemplate> 
                    </asp:RoleGroup> 
                </RoleGroups> 
            </asp:LoginView>
        </p> 
    </form> 
</body> 
</html>  
