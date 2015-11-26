<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalculatorWebForm.aspx.cs" Inherits="HimesP4.CalculatorWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>A Calculator</h1>
        <p>
            Enter a number: <asp:TextBox ID="txbNum1" runat="server"></asp:TextBox>
        </p>
        <p>
            Enter another number:<asp:TextBox ID="txbNum2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnAdd" runat="server" Text="+" OnClick="btnAdd_Click" />
            <asp:Button ID="btnSubtract" runat="server" Text="-" OnClick="btnSubtract_Click" style="width: 18px" />
            <asp:Button ID="btnMultiply" runat="server" Text="*" OnClick="btnMultiply_Click" />
            <asp:Button ID="btnDivide" runat="server" Text="/" OnClick="btnDivide_Click" />
        </p>
        <p>
            Answer: <asp:Label ID="lblAnswer" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnReturn" runat="server" Text="Return to Welcome Page" PostBackUrl="~/WelcomePage.aspx"/>
        </p>
    </div>
    </form>
</body>
</html>
