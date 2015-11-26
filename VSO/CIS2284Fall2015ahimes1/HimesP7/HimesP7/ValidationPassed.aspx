﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="HimesP6.ValidationPassed" CodeFile="~/ValidationPassed.aspx.cs" Title="Results" %>

<%@ PreviousPageType VirtualPath="~/Page6.aspx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Results of Survey</title>
</head>
<body style="background: #00ff00">
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <p>
                            <asp:Label ID="lblSummary" runat="server" Text=""></asp:Label>
                        </p>
                        <p>
                            <asp:Image ID="imgUploaded" runat="server" Width="200" />
                        </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>

                            <asp:GridView ID="GridView1" runat="server"
                                AutoGenerateColumns="False"
                                DataKeyNames="Id"
                                DataSourceID="SqlDataSource1"
                                AutoGenerateEditButton="True"
                                AutoGenerateDeleteButton="True"
                                EmptyDataText="No data!">
                                <Columns>
                                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                    <asp:BoundField DataField="band" HeaderText="band" SortExpression="band" />
                                    <asp:BoundField DataField="season" HeaderText="season" SortExpression="season" />
                                    <asp:BoundField DataField="yesno" HeaderText="yesno" SortExpression="yesno" />
                                    <asp:BoundField DataField="colors" HeaderText="colors" SortExpression="colors" />
                                    <asp:BoundField DataField="matter" HeaderText="matter" SortExpression="matter" />
                                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [survey_fields] WHERE [Id] = @Id" InsertCommand="INSERT INTO [survey_fields] ([name], [band], [season], [yesno], [colors], [matter], [date]) VALUES (@name, @band, @season, @yesno, @colors, @matter, @date)" SelectCommand="SELECT * FROM [survey_fields]" UpdateCommand="UPDATE [survey_fields] SET [name] = @name, [band] = @band, [season] = @season, [yesno] = @yesno, [colors] = @colors, [matter] = @matter, [date] = @date WHERE [Id] = @Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="band" Type="String" />
                                    <asp:Parameter Name="season" Type="String" />
                                    <asp:Parameter Name="yesno" Type="String" />
                                    <asp:Parameter Name="colors" Type="String" />
                                    <asp:Parameter Name="matter" Type="String" />
                                    <asp:Parameter DbType="Date" Name="date" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="band" Type="String" />
                                    <asp:Parameter Name="season" Type="String" />
                                    <asp:Parameter Name="yesno" Type="String" />
                                    <asp:Parameter Name="colors" Type="String" />
                                    <asp:Parameter Name="matter" Type="String" />
                                    <asp:Parameter DbType="Date" Name="date" />
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>

                        </p>
                        <p>
                            <asp:Button ID="btnReturn" runat="server" Text="Return to Survey Page" PostBackUrl="~/Page6.aspx" />
                        </p>
                    </td>
                    <td>
                        <p>
                            <asp:Label ID="lblName" runat="server" Text="Enter name: "></asp:Label>
                            <asp:TextBox ID="txbName" runat="server"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="lblBand" runat="server" Text="Enter band: "></asp:Label>
                            <asp:TextBox ID="txbBand" runat="server"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="lblSeason" runat="server" Text="Enter season: "></asp:Label>
                            <asp:TextBox ID="txbSeason" runat="server"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="lblYesNo" runat="server" Text="Choose yes or no: "></asp:Label>
                            <asp:RadioButtonList ID="rbListYesNo" runat="server">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem Selected="True">No</asp:ListItem>
                            </asp:RadioButtonList>
                        </p>
                        <p>
                            <asp:Label ID="lblColors" runat="server" Text="Enter colors: "></asp:Label>
                            <asp:TextBox ID="txbColors" runat="server"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="lblMatter" runat="server" Text="Enter matter: "></asp:Label>
                            <asp:TextBox ID="txbMatter" runat="server"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="lblDate" runat="server" Text="Enter date (MM/DD/YY): "></asp:Label>
                            <asp:TextBox ID="txbDate" runat="server"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Button ID="btnInsert" runat="server" Text="Add to database" OnClick="btnInsert_Click" />
                            <asp:Label ID="lblInputError" runat="server" Text=""></asp:Label>
                        </p>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
