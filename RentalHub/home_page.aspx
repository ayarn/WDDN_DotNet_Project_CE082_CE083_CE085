<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home_page.aspx.cs" Inherits="RentalHub.home_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="home.css" />
    <title>Rental Hub</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="title">
            <p class="big">Rental Hub</p>
            <p class="small">The place where you'll find every props on Rent..!</p>
        </div>
        <div class="navbar">
            <a class="active" href="home_page.aspx">Home</a>
            <a href="order_page.aspx">Order</a>
            <a href="request_page.aspx">Request</a>
            <a href="#">Upload</a>
            
            <asp:Button ID="adminBtn" runat="server" Text="Admin" OnClick="adminBtn_Click" />
            
        </div>
        <div class="btn">
            <asp:Button ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click"  />
            <asp:Button ID="SignUpBtn" runat="server" Text="Sign Up" OnClick="SignUpBtn_Click" />
        </div>
        <div class="grid-container">
            <div class="grid-item"> <img src="img_hero_passion.png" /> </div>
            <div class="grid-item"> <img src="img_fridge.jpg" /> </div>
            <div class="grid-item"> <img src="img_laptop.jpg" /> </div>
            <div class="grid-item"> <img src="img_ac.jpg" /> </div>
            <div class="grid-item"> <img src="img_car.jpeg" /> </div>
            <div class="grid-item"> <img src="img_washing.png" /> </div>
            <div class="grid-item"> <img src="img_sofa.png" /> </div>
            <div class="grid-item"> <img src="img_table.jpg" /> </div>
            <div class="grid-item"> <img src="img_ro.jpg" /> </div>
        </div>

    </form>
</body>
</html>
