<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About this Page</title>
    <style>
        body {
            font-size: 40px;
            font-weight: bolder;
            color: white;
            background: black;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="">
        <div>
            This website <br />
            is the result of <br />
            project 7 <br />
            from <br />
            aspx.net class. <br />
            <br />
            The following are featured:<br />
            <ul style="font-size: 16px; font-style:italic; text-align:left">
                <li>A login page</li>
                <li>A Home page that shows basic HTML with CSS and links to other pages.</li>
                <li>The Button Colors page. The first of many content pages.</li>
                <li>The Happy/Sad page, with an emoticon whose mood is affected by a checkmark.</li>
                <li>The Reverse Text page, entered text can be reversed with the click of a button.</li>
                <li>A place to quickly test the Profile feature of the SQL database.</li>
                <li>An obnoxious survey page filled with required fields. Upon successful completion, the user may configure a survey table on the database.</li>
                <li>A fun calculator.</li>
                <li>A mystery page...</li>
                <li>A page where groups (roles) can be added or removed (ADMIN ONLY)</li>
                <li>A page where users may be removed or added to a group (ADMIN ONLY)</li>
                <li>A page where users may be removed from the website entirely (ADMIN ONLY)</li>

            </ul>
            <br />
            That's it!
            <br />
            <asp:Button ID="btnHome" runat="server" Text="Return to Home page." PostBackUrl="~/Home.aspx"/>
        </div>
    </form>
</body>
</html>
