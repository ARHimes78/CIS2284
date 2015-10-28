<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SurveyPage1.aspx.cs" Inherits="Day6Demo.SurveyPage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript"> 
        function validateNumber(oSrc, args) {
            args.IsValid = (args.Value % 5 == 0);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Text="Wrox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                ControlToValidate="TextBox1" EnableClientScript="true" Text="Please change value in textbox!" 
                InitialValue ="Wrox" Display ="Dynamic"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox1" EnableClientScript="true" Text="Please do not leave this field blank!" 
                Display ="Dynamic"/> 
        </p>        
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server"> 
                <asp:ListItem Selected="True">Select a profession</asp:ListItem> 
                <asp:ListItem>Programmer</asp:ListItem>
                <asp:ListItem>Lawyer</asp:ListItem> 
                <asp:ListItem>Doctor</asp:ListItem> 
                <asp:ListItem>Artist</asp:ListItem>  
            </asp:DropDownList>  
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Please make a selection" 
                ControlToValidate="DropDownList1" InitialValue="Select a profession">  
            </asp:RequiredFieldValidator>  
        </p>
        <p>
            Enter Password: <br />
            <asp:TextBox ID="TextBoxPassword1" runat="server" TextMode="Password"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="Must provide a password!" 
                ControlToValidate="TextBoxPassword1"  Display ="Dynamic"/>  
        </p>        
        <p>
            Confirm Password<br />
            <asp:TextBox ID="TextBoxPassword2" runat="server" TextMode="Password"></asp:TextBox> 
            <asp:CompareValidator ID="CompareValidator1" runat="server" Text="Passwords do not match!" 
                ControlTOValidate="TextBoxPassword2" ControlToCompare="TextBoxPassword1" Display ="Dynamic"/> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="Must provide a password!" 
                ControlToValidate="TextBoxPassword2"  Display ="Dynamic"/> 
        </p>
        <p>
            Age:
            <asp:TextBox ID="TextBoxAge" runat="server" MaxLength="3"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server"  Text="You must be at least 18 to join" ErrorMessage="You must be at least 18 to join"
                ControlToValidate="TextBoxAge" Type="Integer" Operator="GreaterThanEqual" ValueToCompare="18"></asp:CompareValidator>
        </p>
        <p>
            Enter number between 30 and 40: <asp:TeXtBox ID="TextBoxRange" runat="server" MaxLength="3"></asp:TeXtBox> &nbsp; 
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBoxRange" Type="Integer" Text="<img src='error.jpg' alt='error!' />" MaximumValue="40" MinimumValue="30"></asp:RangeValidator> 
        </p>
        <p>
            Arrival Date: 
            <asp:TextBox ID="TextBoxDate" runat="server"></asp:TextBox>&nbsp; 
            <asp:RangeValidator ID="RangeValidator2" runat="server"  Text="You must only select a date within the next two weeks." ControlToValidate="TextBoxDate" Type="Date"></asp:RangeValidator>
            <br /> <br /> 
            Select your arrival date:<br /> 
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_Selectionchanged"></asp:Calendar> &nbsp; <br />

        </p>
        <p>
            Email: <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox> 
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="You must enter an email address" ValidationEXpression="\w+([—+.']\w+)*@\w+([-.]\w+)*.\w+([-.]\w+)*" ControlToValidate="TextBoxEmail"></asp:RegularExpressionValidator>
        </p>
        <p>
            Number:  <asp:TextBox ID="TextBoxNum" runat="server"></asp:TextBox>  &nbsp;  
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBoxNum" Text="error!" OnServerValidate="ValidateNumber">  </asp:CustomValidator>
        </p>
        <p>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </p>
        <p>
            <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" PostBackUrl="~/SurveyPage2.aspx" OnClick="ButtonSubmit_Click" />            
        </p>
        <p>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="You received the following errors:"></asp:ValidationSummary>
        </p>
    </div>
    </form>
</body>
</html>
