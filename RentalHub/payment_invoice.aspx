<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment_invoice.aspx.cs" Inherits="RentalHub.payment_invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="request.css" />
    <title>Invoice</title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
            height: 423px;
            margin-left: 40px;
            margin-right: 35px;
            margin-top: 0px;
            margin-bottom: 22px;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            text-align: left;
            width: 347px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div class="title">
            <p class="big">Rental Hub</p>
            <p class="small">The place where you'll find every props on Rent..!</p>
        </div>
        <div class="navbar">
            <a href="home_page.aspx">Home</a>
            <a href="#">Order</a>
            <a href="request_page.aspx">Request</a>
            <a href="#">Upload</a>
            
            <asp:Button ID="logout" runat="server" Text="Logout" />
            <asp:Button ID="adminBtn" runat="server" Text="Admin" />
        </div>
        <table align ="center" class="auto-style1" style="font-family: Arial, Helvetica, sans-serif; font-size: 20px; font-weight: bold; color: #CC3300; text-align: center">
            <tr>
                <td class="auto-style2">Name : </td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">User Name : </td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Product : </td>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Cost : </td>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Account No : </td>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Bank : </td>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email : </td>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Mobile No : </td>
                <td class="auto-style3">
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address : </td>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
