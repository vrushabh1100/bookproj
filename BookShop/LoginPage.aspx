<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="BookShop.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 58%;
        }
        .auto-style3 {
            height: 44px;
        }
        .auto-style4 {
            height: 42px;
        }
        .auto-style5 {
            height: 46px;
        }
        .auto-style6 {
            width: 131px;
        }
        .auto-style7 {
            height: 44px;
            width: 131px;
        }
        .auto-style8 {
            height: 42px;
            width: 131px;
        }
        .auto-style9 {
            height: 46px;
            width: 131px;
        }
        .auto-style10 {
            width: 131px;
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('images/book3.jpg'); height: 768px; width: 1366px;">
    

        <table align="center"; class="auto-style1">
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lbl_usrnm" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text="User Name  "></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="tx_usrnm" runat="server" Height="25px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lbl_pswd" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text="Password  "></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="tx_pswd" runat="server" Height="25px" TextMode="Password" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style5">
                    <asp:Button ID="btn_login" runat="server" Height="40px" OnClick="btn_login_Click" Text="Login" Width="150px" BorderColor="Aqua" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
