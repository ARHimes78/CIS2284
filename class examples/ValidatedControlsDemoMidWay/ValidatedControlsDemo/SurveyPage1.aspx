<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SurveyPage1.aspx.cs" Inherits="ValidatedControlsDemo.SurveyPage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:TextBox ID="TextBox1" Text="Please enter a name" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" 
                ErrorMessage="Please change value in textbox!"
                Text="Please change value in textbox!"
                InitialValue="Please enter a name"
                Display="Dynamic">
            </asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox1" 
                ErrorMessage="Please enter a value!"
                Text="Please enter a value!"
                Display="Dynamic">
            </asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:DropDownList ID="ddlProfession" runat="server">
                <asp:ListItem Selected="True">Select a profession</asp:ListItem>
                <asp:ListItem>Programmer</asp:ListItem>
                <asp:ListItem>Lawyer</asp:ListItem>
                <asp:ListItem>Doctor</asp:ListItem>
                <asp:ListItem>Artist</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator CssClass="MyValidators" 
                ID="RequiredFieldValidator3" 
                runat="server" ErrorMessage="Please make a selection"
                text="Please make a selection"
                InitialValue="Select a profession"
                ControlToValidate="ddlProfession">
            </asp:RequiredFieldValidator>
        </p>
        <p>
            Password: <asp:TextBox ID="txbPassword1" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Passwords must match!" 
                text="Passwords must match!"
                ControlToCompare="txbPassword2"
                ControlToValidate="txbPassword1">
            </asp:CompareValidator>
        </p>
         <p>
            Password: <asp:TextBox ID="txbPassword2" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            Age: <asp:TextBox ID="txbAge" MaxLength="3" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                ErrorMessage="Must be 18."
                text ="Must be 18."
                ControlToValidate="txbAge"
                Operator="GreaterThanEqual"
                ValueToCompare="18"
                Type="Integer"
                 >                
            </asp:CompareValidator>
        </p>
        <p>
            Enter a number between 30 and 40: 
            <asp:TextBox ID="txbRange" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ErrorMessage="Value must be between 30 and 40"
                ControlToValidate="txbRange"
                Type="Integer"
                Text="Value must be between 30 and 40"
                MaximumValue="40"
                MinimumValue="30"
                >

            </asp:RangeValidator>
        </p>
        <p>
            <asp:Calendar ID="Calendar1" runat="server" 
                OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        </p>
        <p>
            Date: <asp:TextBox ID="txbDate" runat="server" ReadOnly="true" CausesValidation="True"></asp:TextBox>
            <asp:RangeValidator ID="rvDate" runat="server" 
                ErrorMessage="RangeValidator"
                ControlToValidate="txbDate"
                Text="You must only select a date within the next two weeks."
                Type="Date"
                 
                    >
            </asp:RangeValidator>
        </p>
        <p>
            Email: <asp:TextBox ID="txbEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="RegularExpressionValidator"
                Text="You must enter an email address"
                ValidationExpression="\w+([—+.']\w+)*@\w+([-.]\w+)*.\w+([-.]\w+)*" 
                ControlToValidate="txbEmail"
                ValidationGroup="val1" >
            </asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                HeaderText="You received the following errors:"/>
        </p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />    
            <asp:Button ID="Button1" runat="server" ValidationGroup="val1" Text="Submit" />        
        </p>
    </div>
    </form>
</body>
</html>
