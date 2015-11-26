<%@ Page Title="Questionnaire" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Page6.aspx.cs" Inherits="Page6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <h1>SURVEY PAGE
                </h1>

                <p>
                    <asp:Label ID="lblName1" runat="server" Text="Enter your name: "></asp:Label>
                    <asp:TextBox ID="txbName1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server"
                        ErrorMessage="Enter in your name!"
                        Text="Enter in your name!"
                        ControlToValidate="txbName1"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Label ID="lblName2" runat="server" Text="Enter your name AGAIN, to make sure it's spelled correctly."></asp:Label>
                    <asp:TextBox ID="txbName2" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="cvName" runat="server"
                        ErrorMessage="Both name fields must be the same!"
                        Text="Both name fields must be the same!"
                        ControlToValidate="txbName2"
                        ControlToCompare="txbName1"
                        Display="Dynamic">
                    </asp:CompareValidator>
                </p>
                <p>
                    <asp:DropDownList ID="ddlFavoriteBand" runat="server">
                        <asp:ListItem Selected="True">Favorite Band</asp:ListItem>
                        <asp:ListItem>Aerosmith</asp:ListItem>
                        <asp:ListItem>Creedence Clearwater Revival</asp:ListItem>
                        <asp:ListItem>The Police</asp:ListItem>
                        <asp:ListItem>Foreigner</asp:ListItem>
                        <asp:ListItem>REO Speedwagon</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvFavoriteBand" runat="server"
                        ErrorMessage="Please select your favorite band!"
                        Text="Please select your favorite band!"
                        ControlToValidate="ddlFavoriteBand"
                        InitialValue="Favorite Band"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:ListBox ID="lbxFavoriteSeason" runat="server">
                        <asp:ListItem Selected="True">Favorite Season</asp:ListItem>
                        <asp:ListItem>Spring</asp:ListItem>
                        <asp:ListItem>Summer</asp:ListItem>
                        <asp:ListItem>Autumn</asp:ListItem>
                        <asp:ListItem>Winter</asp:ListItem>
                        <asp:ListItem>My planet's 5th season</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:ListBox>
                    <asp:RequiredFieldValidator ID="rfvFavoriteSeason" runat="server"
                        ErrorMessage="Please select your favorite season!"
                        Text="Please select your favorite season!"
                        ControlToValidate="lbxFavoriteSeason"
                        InitialValue="Favorite Season"
                        Display="Dynamic">

                    </asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:CheckBox ID="chkYesNo" runat="server"
                        Text="Check for yes, uncheck for no."
                        OnCheckedChanged="chkYesNo_CheckedChanged"
                        AutoPostBack="true" />
                    <asp:Label ID="lblYesNo" runat="server" Text="No"></asp:Label>

                </p>
                <p>
                    <asp:Label ID="lblColors" runat="server" Text="Choose a color or colors."></asp:Label>
                    <asp:CheckBoxList ID="cxbListColors" runat="server"
                        OnSelectedIndexChanged="cxbListColors_SelectedIndexChanged"
                        AutoPostBack="true">
                        <asp:ListItem>Red</asp:ListItem>
                        <asp:ListItem>Green</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:TextBox ID="txbColors" runat="server" ReadOnly="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvColors" runat="server"
                        ErrorMessage="Please choose a color or colors."
                        Text="Please choose a color or colors."
                        ControlToValidate="txbColors"
                        Display="Dynamic">

                    </asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Label ID="lblMatter" runat="server" Text="Choose a state of matter."></asp:Label>
                    <asp:RadioButtonList ID="rbListMatter" runat="server"
                        OnSelectedIndexChanged="rbListMatter_SelectedIndexChanged"
                        AutoPostBack="true">
                        <asp:ListItem>Solid</asp:ListItem>
                        <asp:ListItem>Liquid</asp:ListItem>
                        <asp:ListItem>Gas</asp:ListItem>
                        <asp:ListItem>Plasma</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:TextBox ID="txbMatter" runat="server" ReadOnly="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMatter" runat="server"
                        ErrorMessage="Please choose a form of matter."
                        Text="Please choose a form of matter."
                        ControlToValidate="txbMatter"
                        Display="Dynamic">

                    </asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Calendar ID="calendar" runat="server" Caption="Choose a date within the next 10 days."
                        OnSelectionChanged="calendar_SelectionChanged"></asp:Calendar>
                    <asp:TextBox ID="txbDisplayDate" runat="server" Text="" ReadOnly="true"></asp:TextBox>
                    <asp:RangeValidator ID="rvCalendar" runat="server"
                        ErrorMessage="Date must be within THE NEXT 10 days!"
                        Text="Date must be within THE NEXT 10 days!"
                        ControlToValidate="txbDisplayDate"
                        Type="Date"
                        Display="Dynamic">
                    </asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="rfvDisplayDate" runat="server"
                        ErrorMessage="Choose a date with the next 10 days!"
                        Text="Choose a date with the next 10 days!"
                        ControlToValidate="txbDisplayDate"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Label ID="lblUpload" runat="server" Text="Upload an image file (.jpg or .png)."></asp:Label>
                    <asp:FileUpload ID="fuImage" runat="server" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ErrorMessage="File must be a .jpg or a .png file."
                        ControlToValidate="fuImage"
                        ValidationExpression="^.+(.jpg|.JPG|.png|.PNG)$"
                        Display="Dynamic">

                    </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfvUpload" runat="server"
                        ErrorMessage="Please upload a .jpg or .png file."
                        Text="Please upload a .jpg or .png file."
                        ControlToValidate="fuImage"
                        Display="Dynamic">

                    </asp:RequiredFieldValidator>
                </p>

                <p>
                    <asp:ImageButton ID="imbBtnSubmit" runat="server" ImageUrl="/Images/submit.png"
                        OnClick="imbBtnSubmit_Click"
                        PostBackUrl="~/ValidationPassed.aspx" />
                    <asp:ValidationSummary ID="vsSummary1" runat="server"
                        HeaderText="The following errors occured:" />
                </p>
                <p>
                    <asp:Label ID="lblExtra" runat="server" Text=""></asp:Label>
                </p>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>


</asp:Content>
