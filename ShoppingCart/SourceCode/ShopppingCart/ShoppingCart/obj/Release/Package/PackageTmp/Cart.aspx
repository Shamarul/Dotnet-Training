<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ShoppingCart.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="Content/StyleSheet1.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="Login">
            <h3>Shopping Cart</h3>

            <div>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </div>
            <div>
                <p>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </p>
            </div>
            <div>
                <asp:Button ID="btnLogin" runat="server" Text="Login" />
            </div>
        </div>

    </form>
</body>
</html>

