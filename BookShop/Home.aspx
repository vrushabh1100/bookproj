<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BookShop.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            width: 41%;
        }
        .auto-style3 {
            width: 147px;
        }
        .auto-style4 {
            width: 100%;
            height: 137px;
        }
        .auto-style8 {
            color: #FF0000;
            font-size: xx-large;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 448px;
        }
        .auto-style11 {
            width: 380px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div "width:100%" class="auto-style1">    
        &nbsp;<center class="auto-style8"><strong>Welcome To BookForest</strong></center><br />
        <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
        <table class="auto-style9" style="background-color: #FFFF66">
            <tr>
                <td class="auto-style10">
        <br />
        <span class="auto-style1">You Have Products in Your Cart : 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;</span></td>
                <td class="auto-style11">&nbsp; <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx" Font-Bold="True">Show Cart</asp:HyperLink>
                    </span>
                    &nbsp;</td>
                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_logout" runat="server" OnClick="btn_logout_Click" Text="Logout" Font-Bold="True" style="text-align: right" />
                    </td>
            </tr>
        </table>
        <br />
        
        <span class="auto-style1">
        <br />
        </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <table class="auto-style2" style="background-color: #00FFFF">
            <tr>
                <td class="auto-style3">Search Book Name</td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td style="text-align: left">
                    <asp:Button ID="btn_Search" runat="server" OnClick="btn_Search_Click" Text="Search" />
                </td>
            </tr>
        </table>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" BackColor="#FF9933">View All Books</asp:LinkButton>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="BookId" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatColumns="4" RepeatDirection="Horizontal" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal" ForeColor="Black">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table border="1" class="auto-style4">
                    <tr>
                        <td style="text-align: center">BookId
                            <asp:Label ID="Label2" runat="server" style="text-align: center" Text='<%# Eval("BookId") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label3" runat="server" style="text-align: center" Text='<%# Eval("BookName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("BookImage") %>' style="text-align: center" Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">Price
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">Quantity&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("BookId")%>' CommandName="addtocart" Height="34px" ImageUrl="~/images/AddToCart.jpg" Width="123px" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookdbConnectionString %>" SelectCommand="SELECT * FROM [Booktbl]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BookdbConnectionString2 %>" SelectCommand="SELECT * FROM [Booktbl] WHERE ([KeywordSearch] LIKE '%' + @KeywordSearch + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="KeywordSearch" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
