<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup_page.aspx.cs" Inherits="RentalHub.signup_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="signup.css" />
    <title>Sign Up</title>
    <style type="text/css">

        .auto-style3 {
            width: 894px;
            position: relative;
            height: 339px;
            top: 20px;
            right: 56px;
            bottom: -38px;
            left: 20px;
        }
        .auto-style4 {
            text-align: right;
            width: 226px;
        }
        .auto-style9 {
            width: 164px;
        }
        .auto-style10 {
            width: 20px;
        }
        .auto-style11 {
            text-align: right;
            width: 226px;
            height: 29px;
        }
        .auto-style12 {
            width: 164px;
            height: 29px;
        }
        .auto-style13 {
            width: 20px;
            height: 29px;
        }
        .auto-style14 {
            height: 29px;
            width: 432px;
        }
        .auto-style15 {
            width: 432px;
        }
        .auto-style16 {
            text-align: right;
            width: 226px;
            height: 34px;
        }
        .auto-style17 {
            width: 164px;
            height: 34px;
        }
        .auto-style18 {
            width: 20px;
            height: 34px;
        }
        .auto-style19 {
            width: 432px;
            height: 34px;
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
            <a href="#">Upload</a>
            
            <asp:Button ID="logout" runat="server" Text="Logout" />
            <asp:Button ID="adminBtn" runat="server" Text="Admin"  />
            
        </div>
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        <table class="auto-style3" style="padding: 10px; margin: 2px; font-family: Verdana; font-size: 15px; font-weight: bold; color: #990099; text-align: center; background-color: #FFCCFF; border-style: solid; border-width: thin; border-spacing: 1px; ">
            <tr>
                <td class="auto-style16">Username :&nbsp;&nbsp; </td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Username can't be empty." ForeColor="Red" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp; </td>
                <td class="auto-style19">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username must be 6 to 14 character long." ForeColor="Red" ValidationExpression="^[\s\S]{6,14}$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Email :&nbsp;&nbsp; </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style8" ErrorMessage="Email can't be empty." ForeColor="Red">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp; </td>
                <td class="auto-style15">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter proper email." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Password :&nbsp;&nbsp; </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style8" ErrorMessage="Password can't be empty." ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14">
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Password must include one capital, one small letter, one number and must be 6 to 14 character long." ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox3">*</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Confirm Password :&nbsp;&nbsp; </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="auto-style8" ErrorMessage="re-entered Password can't be empty." ForeColor="Red">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp; </td>
                <td class="auto-style15">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="re-entered password must be same as previous one entered." ForeColor="Red">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Mobile No. :&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Mobile No can't be empty." ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Address :&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" CssClass="auto-style8" ErrorMessage="Address Can't be empty." ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Sign up" OnClick="Button1_Click1" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
                </td>
                <td colspan="2">
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
