<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_page.aspx.cs" Inherits="RentalHub.login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="login.css" />
    <title>Login</title>
    <style type="text/css">
        .auto-style2 {
            width: 103px;
        }
        .auto-style3 {
            position: relative;
            z-index: auto;
            width: 384px;
            height: 159px;
            top: 29px;
            right: -119px;
            bottom: -69px;
            left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="title">
            <p class="big">Rental Hub</p>
            <p class="small">The place where you'll find every props on Rent..!</p>
        </div>
        <div class="navbar">
            <a href="home_page.aspx">Home</a>
            <a href="order_page.aspx">Order</a>
            <a href="request_page.aspx">Request</a>
            
            
        </div>
        <div>
            <table class="auto-style3" style="padding: 10px; margin: 20px; font-family: Verdana; font-size: 15px; font-weight: bold; color: #990099; text-align: center; background-color: #FFCCFF; border-style: solid; border-width: thin; border-spacing: 1px; ">
                <tr>
                    <td class="auto-style2">Username :</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Password :</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="New User ?" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>
