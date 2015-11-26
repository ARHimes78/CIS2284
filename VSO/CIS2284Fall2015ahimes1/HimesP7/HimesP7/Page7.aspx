<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Page7.aspx.cs" Inherits="Page7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#test1").hide();
            $("#test2").hide();
            $("#test3").hide();
            $("#test4").hide();

            randomButton(Math.round(Math.random() * 3));

            $("#test1").click(function () {
                $(this).hide();
                randomButton(Math.round(Math.random() * 3));
            });

            $("#test2").click(function () {
                $(this).hide();
                randomButton(Math.round(Math.random() * 3));
            });

            $("#test3").click(function () {
                $(this).hide();
                randomButton(Math.round(Math.random() * 3));
            });

            $("#test4").click(function () {
                $(this).hide();
                randomButton(Math.round(Math.random() * 3));
            });

            function randomButton (btnNum) {
                switch (btnNum) {
                    case 0:
                        $("#test1").show();
                        break;
                    case 1:
                        $("#test2").show();
                        break;
                    case 2:
                        $("#test3").show();
                        break;
                    case 3:
                        $("#test4").show();
                        break;
                }
            }
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="table-layout: fixed; width: 800px; height: 50px;">
        <tr>
            <td>
                <p id="test1">
                    Click here!
                </p>
            </td>
            <td>
                <p id="test2">
                    Click here!
                </p>
            </td>
            <td>
                <p id="test3">
                    Click here!
                </p>
            </td>
            <td>
                <p id="test4">
                    Click here!
                </p>
            </td>

        </tr>
    </table>



</asp:Content>
