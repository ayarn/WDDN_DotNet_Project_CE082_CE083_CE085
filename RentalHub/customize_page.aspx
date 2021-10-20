<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customize_page.aspx.cs" Inherits="RentalHub.customize_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="customize.css" />
    <title>Customize Product</title>
    <style type="text/css">
        .auto-style1 {
            width: 44%;
            position: relative;
            left: 0px;
            top: 0px;
            height: 201px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 202px;
        }
        .auto-style4 {
            height: 26px;
            width: 202px;
        }
        .auto-style5 {
            width: 202px;
            height: 33px;
        }
        .auto-style6 {
            height: 33px;
        }
        .auto-style7 {
            margin-left: 160px;
        }
        .auto-style8 {
            text-decoration: underline;
            font-family: Arial, Helvetica, sans-serif;
            color: #CC3300;
        }
        .auto-style9 {
            text-decoration: underline;
            font-family: Arial, Helvetica, sans-serif;
            color: #CC0000;
        }
        .auto-style10 {
            margin-left: 40px;
        }
        .auto-style11 {
            margin-left: 80px;
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
            
            
            <asp:Button ID="logout" runat="server" Text="Logout" PostBackUrl="~/admin_page.aspx" />
            
        </div>
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style8"><strong>
        <span style="color: rgb(0, 0, 0); font-family: HelveticaNeue-Light, -apple-system, AppleSDGothicNeo-Regular, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;, NotoColorEmoji, EmojiSymbols, Symbola, Noto, &quot;Android Emoji&quot;, AndroidEmoji, &quot;Arial Unicode MS&quot;, &quot;Zapf Dingbats&quot;, AppleColorEmoji, &quot;Apple Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(224, 230, 235, 0.2); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">➦</span>Requests which are recieved:
        <br />
        </strong></span>
        <br />
        <div class="auto-style11">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Product Name" HeaderText="Product Name" SortExpression="Product Name" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </div>
        <div class="auto-style10">
            <br />
            <table class="auto-style1" style="border-style: solid; border-width: thin; padding: 2px; margin: 10px; font-family: 'Arial Black'; font-size: 16px; color: #663300; text-align: center; background-color: #FFFF66;">
                <tr>
                    <td class="auto-style3">User Name : er Name : </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Product Name :</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Cost :</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Upload Image :</td>
                    <td class="auto-style2">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Category :</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>A.C.</asp:ListItem>
                            <asp:ListItem>Bike</asp:ListItem>
                            <asp:ListItem>Car</asp:ListItem>
                            <asp:ListItem>Furniture</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Availability :</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
            </table>&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:userdbConnectionString %>" SelectCommand="SELECT * FROM [Requests]"></asp:SqlDataSource>
            <br />
            <br />
            <span class="auto-style9"><strong><span style="color: rgb(0, 0, 0); font-family: HelveticaNeue-Light, -apple-system, AppleSDGothicNeo-Regular, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;, NotoColorEmoji, EmojiSymbols, Symbola, Noto, &quot;Android Emoji&quot;, AndroidEmoji, &quot;Arial Unicode MS&quot;, &quot;Zapf Dingbats&quot;, AppleColorEmoji, &quot;Apple Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(224, 230, 235, 0.2); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">➦<span>&nbsp;</span></span>Products Added 
            to Database:<br />
            </strong></span>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" DataSourceID="SqlDataSource1" DataKeyNames="Id,cost,availability" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="product name" HeaderText="product name" SortExpression="product name" />
                    <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                    <asp:BoundField DataField="availability" HeaderText="availability" SortExpression="availability" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
        <br />
        <div class="auto-style7">
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userdbConnectionString %>" DeleteCommand="DELETE FROM [Order] WHERE [Id] = @Id" SelectCommand="SELECT * FROM [Order]" UpdateCommand="UPDATE [Order] SET [cost] = @cost, [availability] = @availability WHERE [Id] = @Id"></asp:SqlDataSource>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
