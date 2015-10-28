<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAccount.aspx.cs" Inherits="MembershipDemo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Creating Users with Personalization</title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="312px" OnContinueButtonClick="CreateUserWizard1_ContinueButtonClick" OnCreatedUser="CreateUserWizard1_CreatedUser" Width="316px">
            <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <WizardSteps>
                        <asp:WizardStep ID="WizardStep1" Runat="server"  Title="Additional Information" StepType="Start">  
                            <table width="100%">
                                <tr>
                                    <td>  Firstname: </td>
                                    <td>  <asp:TextBox ID="Firstname" Runat="server"></asp:TextBox>  </td>
                                </tr>
                                <tr>
                                    <td>  Lastname: </td>
                                    <td>  <asp:TextBox ID="Lastname" Runat="server"></asp:TextBox>  </td>
                                </tr>
                                <tr>
                                    <td>  Age: </td>
                                    <td>  <asp:TextBox ID="Age" Runat="server"></asp:TextBox>  </td>
                                </tr>
                            </table>  
                        </asp:WizardStep>  

                <asp:CreateUserWizardStep runat="server" />
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
            <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
            <StepNavigationTemplate>
                <asp:Button ID="StepPreviousButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" ForeColor="#284775" Text="Previous" />
                <asp:Button ID="StepNextButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" ForeColor="#284775" Text="Next" />
            </StepNavigationTemplate>
            <StepStyle BorderWidth="0px" />
        </asp:CreateUserWizard>
    </form>
</body>
</html>



