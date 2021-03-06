<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="RentalHub.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="request.css" />
    <title>Confirmation</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            font-size: large;
            font-weight: bold;
            background-color: #FFFF00;
        }
        .auto-style4 {
            text-decoration: underline;
            color: #CC0000;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style5 {
            text-align: center;
            margin-left: 640px;
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
           
            
            <asp:Button ID="logout" runat="server" Text="Logout" />
        </div>
            <div class="auto-style1">
        
                <br />
                <br />
                <h3><span class="auto-style4"><strong>Your selection Details:</strong></span></h3>
                <br />
        
            <asp:Label ID="Label1" runat="server" BackColor="#6600ff" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Names="Arial" ForeColor="White" CssClass="auto-style2"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" BackColor="#6600ff" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Names="Arial" ForeColor="White" CssClass="auto-style2"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" BackColor="#6600ff" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Names="Arial" ForeColor="White" CssClass="auto-style2"></asp:Label>
            <br />
            <br />
                <div class="auto-style5">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:ImageField DataImageUrlField="photo" HeaderText="Your Product">
                    </asp:ImageField>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userdbConnectionString %>" SelectCommand="SELECT [photo] FROM [Picture] WHERE ([Product Name] = @Product_Name)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Product_Name" QueryStringField="pn" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <p>
                <strong>
                <asp:Button ID="Button1" runat="server" Text="Payment" CssClass="auto-style3" OnClick="Button1_Click" />
                </strong>
            </p>
            </div>
    </form>
</body>
</html>
