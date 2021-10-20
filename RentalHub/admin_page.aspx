<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_page.aspx.cs" Inherits="RentalHub.admin_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="admin.css" />
    <title>Admin</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 157px;
        }
        .auto-style3 {
            width: 257px;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            width: 157px;
            text-align: left;
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
            <a class="active" href="#home">Home</a>
            <a href="order_page.aspx">Order</a>
            <a href="request_page.aspx">Request</a>
            <a href="#">Upload</a>
            
            <asp:Button ID="logout" runat="server" Text="Logout" />
            <asp:Button ID="adminBtn" runat="server" Text="Admin"  />
            
        </div>
        <div>

            <h3 style="color:red">**ONLY FOR ADMIN**</h3>
            <br />
            <br />
            <table class="auto-style1" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: 22px; font-weight: bold; color: #000000; text-align: center; background-color: #FFFF66; border-color: #000000; padding: 10px; margin: 10px; position: relative; border-spacing: 2px">
                <tr>
                    <td class="auto-style5">Admin :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style5">Password :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="* wrong password" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" ></asp:Label>
        </p>
    </form>
</body>
</html>
