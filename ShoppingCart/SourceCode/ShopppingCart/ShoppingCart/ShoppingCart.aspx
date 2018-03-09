<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ShoppingCart.Checkout" %>

<!DOCTYPE html>
<html>
<head>
<title>ShoppingCart</title>

    <style>
        .list {
            float : left;
            height : 100%;
  
        }

            .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

.button1 {border-radius: 2px;
          position: absolute;
    top: 8px;
    left: 900px;
    font-size: 18px;
}

        .button3 {
    background-color: cornflowerblue; /* Green */
    border: none;
    color: white;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

.button4 {border-radius: 2px;
 float:right;
    display:block;
    margin-right:450px;
    clear:left;
    font-size: 18px;
}

ul#menu {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}

table {
    border-collapse: collapse;
    width: 80%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body>
<form id="form1" runat="server">
    <div>
 
        <ul id="menu">
            <li><a href="Home.aspx">Home</a></li>
            <li>
                        <asp:Button class="button button1" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1" />
                        <asp:Button class="button button1" ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click1"/>
            </li>
        </ul>

    
    </div>

<h2>Shopping Cart</h2>
<div id="CartEmpty" runat="server">
    Cart is empty since you are not Log In.
</div>
<div style="text-align:center;">
  <div id="CartItem" runat="server" style="width:80%; margin: 0 auto; text-align:left;">
    <table >
        <tr>
            <th>Image</th>
            <th>Product</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
        </tr>
                                  <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                              <tr>
                            <td>
                                <div class="p_img">
                                    <img src="<%#Eval("ProductImage") %>" />
                                </div>
                            </td>
                            <td>
                                <div class="p_name"><span><%#Eval("ProductName") %></span></div>
                            </td>
                            <td>
                                <div class="p_price">RM <%#Eval("ProductPrice")  %> </div>
                            </td>

                            <td><%#Eval("Quantity") %>
                                
                            </td>

                            <td> RM <%#Eval("Total") %></td>
                                
                             
                        </tr>

                                 </ItemTemplate>

                </asp:Repeater>
    </table>
   <div>
    <asp:Button class="button3 button4" ID="btnCheckOut" runat="server" Text="Check Out" OnClick="btnCheckOut_Click" />
  </div>
  </div>
</div>
</form>
</body>
</html>

