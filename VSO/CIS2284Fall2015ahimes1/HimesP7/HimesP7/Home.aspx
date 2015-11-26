<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Styles.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        h1 {
            color: aqua;
            font-family: 'Bauhaus 93';
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    The Home Page.
    <br />
    <asp:Image ID="imgHome" runat="server" ImageUrl="Images/home.png" />

    <p id="site_top">
        <img src="Images/logo.png" />
    </p>
    <table>
        <tr>
            <td>
                <nav>
                    <ul>
                        <li><a href="Page1.aspx">Button Colors</a></li>
                        <li><a href="Page2.aspx">Happy/Sad</a></li>
                        <li><a href="Page3.aspx">Reverse Text</a></li>
                        <li><a href="Page4.aspx">Profile Test</a></li>
                        <li><a href="Page5.aspx">Calculator</a></li>
                        <li><a href="Page6.aspx">Questionnaire</a></li>
                        <li><a href="Page7.aspx">Mystery Page</a></li>
                    </ul>
                </nav>
            </td>
        </tr>
        <tr>
            <td>
                <div id="main">
                    <img src="Images/walrus.jpg" width="225" height="170" />
                    <h1>Welcome to website!</h1>
                    <header>One</header>
                    <p>Paragraph describing the web site.</p>
                    <header>Two</header>
                    <p>The text here could be replaced with something later.</p>
                    <header>Three</header>
                    <p>
                        <a href="http://www.w3schools.com/css/" style="font-size: 24px; color: green">CSS</a>
                        is being applied to elements on this page.
                    </p>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
