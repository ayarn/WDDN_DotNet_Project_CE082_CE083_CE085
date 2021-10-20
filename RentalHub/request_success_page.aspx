<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="request_success_page.aspx.cs" Inherits="RentalHub.request_success_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="request.css" />
    <title></title>
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
            <a href="#">Upload</a>
            
            <asp:Button ID="logout" runat="server" Text="Logout" />
            <asp:Button ID="adminBtn" runat="server" Text="Admin"  />
            
        </div>
        <div>
            <h2>Thanks for requesting...</h2>
            <p id="info">
                Admin will contact you within 48 hr through E-mail. <br />
                Physical condition will be checked and Rent cost will be decided later.
            </p>
        </div>
    </form>
</body>
</html>
