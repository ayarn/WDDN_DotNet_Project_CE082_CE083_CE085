<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="request_page.aspx.cs" Inherits="RentalHub.request_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="request.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 83%;
            position: relative;
            left: 0px;
            top: 0px;
            height: 160px;
        }
        .auto-style2 {
            width: 221px;
        }
        .auto-style3 {
            width: 210px;
        }
        .auto-style4 {
            width: 221px;
            height: 29px;
        }
        .auto-style5 {
            width: 210px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
            width: 781px;
        }
        .auto-style7 {
            width: 781px;
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
            <a class="active" href="request_page.aspx">Request</a>
            
            
            <asp:Button ID="logout" runat="server" Text="Logout" />
            
            
        </div>
        <div id="req">
            REQUEST YOUR PRODUCT HERE !

        </div>
        <p id="notice">
            **here you can request admin to put your product on this site**</p>
        <p>
            &nbsp;</p>
        <table class="auto-style1" style="font-family: Verdana; font-size: 20px; font-weight: bold; color: #FFFFFF; text-align: center; background-color: #9999FF; border: thin solid #0000FF; padding: 4px; margin: 16px;">
            <tr>
                <td class="auto-style4">Product Name :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Category :</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>A.C.</asp:ListItem>
                        <asp:ListItem>Bike</asp:ListItem>
                        <asp:ListItem>Car</asp:ListItem>
                        <asp:ListItem>Furniture</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Time Period :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator >
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" />
                </td>
                <td class="auto-style3">
                    <input id="Reset1" type="reset" value="reset" />
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
