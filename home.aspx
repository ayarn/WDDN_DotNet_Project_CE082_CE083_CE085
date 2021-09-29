<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Rental_Hub.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rental Hub</title>
    <link rel="stylesheet" href="home style.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="titlebar">
            <h1>Rental Hub</h1>
        </div>
        <div class="topnav" id="myTopnav">
            <a href="#home" class="active">Home</a>
            <a href="#news">News</a>
            <a href="#contact">Contact</a>
            <a href="#about">About</a>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
            </a>
        </div>
        Login Here ;
       <div class="login">
         LOGIN
           <br />
           USER NAME :
           <input id="Text1" type="text" / style="padding:2px">
           <br />
           PASSWORD :
           <input id="Password1" type="password" />
           <br /><br />
           <asp:Button ID="Button1" runat="server" Text="Submit" />
       </div>

        <div class="footer">
            <p>Footer</p>
        </div>
    </form>
    <script>
        function myFunction() {
            var x = document.getElementById("myTopnav");
            if (x.className === "topnav") {
                x.className += " responsive";
            } else {
                x.className = "topnav";
            }
        }
    </script>
</body>
</html>
