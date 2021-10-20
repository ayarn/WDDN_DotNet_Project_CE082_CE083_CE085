<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment_page.aspx.cs" Inherits="RentalHub.payment_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="request.css" />
    <title>Payment</title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
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
            <a href="#">Home</a>
            <a href="order_page.aspx">Order</a>
            <a href="request_page.aspx">Request</a>
            
            
            <asp:Button ID="logout" runat="server" Text="Logout" PostBackUrl="~/home_page.aspx"/>
            
        </div>
        <div style="border-style: solid; border-width: thin; padding: 2px; margin: 60px; font-family: Arial, Helvetica, sans-serif; font-size: 22px; font-weight: bold; color: #333399; text-align: center; background-color: #9BB4E6; position: relative;">
            MAKE PAYMENT :<br />
            <br />
            <table class="auto-style1" align="center">
                <tr>
                    <td class="auto-style3">Name : </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Bank Name :</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>SBI</asp:ListItem>
                            <asp:ListItem>HDFC</asp:ListItem>
                            <asp:ListItem>BOB</asp:ListItem>
                            <asp:ListItem>ICICI</asp:ListItem>
                            <asp:ListItem>AXIS</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Account No :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Cost :</td>
                    <td class="auto-style6">
            <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="PAY" CssClass="auto-style1" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </form>
</body>
</html>
