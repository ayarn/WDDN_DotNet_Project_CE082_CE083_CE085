<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign up page.aspx.cs" Inherits="Rental_Hub.sign_up_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            SIGN UP<br />
            <br />
        </div>
        <asp:Label ID="Label1" runat="server" Text="USER NAME :"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <input id="Text1" type="text" /><br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="EMAIL :"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <input id="Text2" type="text" /><br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="PASSWORD :"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <input id="Password1" type="password" /><br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="CONFIRM PASS:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <input id="Password2" type="password" /><br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="MO NUMBER :"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <input id="Text4" type="text" /><br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="HOME ADDRESS :"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <input id="Text3" type="text" /><br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="reset" />
    </form>
</body>
</html>
