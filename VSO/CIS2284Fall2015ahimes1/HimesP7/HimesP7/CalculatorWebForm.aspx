<%@ Page Language="C#" AutoEventWireup="true" Inherits="HimesP4.CalculatorWebForm" CodeFile="~/CalculatorWebForm.aspx.cs" Title="Calculator" Async="true"%>

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
                Enter a number:
                    <asp:TextBox ID="txbNum1" runat="server"></asp:TextBox>
            </p>
            <p>
                Enter another number:<asp:TextBox ID="txbNum2" runat="server"></asp:TextBox>
            </p>
            <p>
                

                <asp:Button ID="btnAdd" runat="server" Text="+" OnClick="btnAdd_Click" />
                <asp:Button ID="btnSubtract" runat="server" Text="-" OnClick="btnSubtract_Click" Style="width: 18px" />
                <asp:Button ID="btnMultiply" runat="server" Text="*" OnClick="btnMultiply_Click" />
                <asp:Button ID="btnDivide" runat="server" Text="/" OnClick="btnDivide_Click" />
            </p>
            <p>
                Answer:
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Label ID="lblAnswer" runat="server" Text=""></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnAdd" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btnSubtract" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btnMultiply" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btnDivide" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
                    
            </p>
            <p>
                <asp:Button ID="btnReturn" runat="server" Text="Return to Welcome Page" PostBackUrl="~/Page5.aspx" />
            </p>

        </div>
    </form>
</body>
</html>
