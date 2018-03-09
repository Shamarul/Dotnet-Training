<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingCart.Login" %>


<!DOCTYPE html>

<html>
<head runat="server">
<meta charset="UTF-8">

<title>Login</title>
<style>
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

img#bg {
  position: fixed;
  top: 40px;
  left: 0;
  width: 100%;
  height: 100%;
  }
  
 div#opacity {
    background: rgba(240,248,255,0.4);
 }
 
 .black {
 	color: black;
 }
 
 TextBox {
    background-color: rgba(176,196,222,0.4);
    color: white;
 }

 TextBox[TextMode=Password] {
    background-color: rgba(176,196,222,0.4);
    color: white;
 }

 button {
 	color: rgb(135,206,235);
 }
  
</style>
<link rel="stylesheet" href="css2/style.css">
</head>
<body >
	<img id="bg" alt="beach" src="images/bg.jpg"/>
	<div>
 
        <ul id="menu">
            <li><a href="Home.aspx">Home</a></li>
            <li><a href="Login.aspx">Login</a></li>
        </ul>
    
    </div>

	<div class="wrapper" id="opacity">
	<div class="container">
		<h1 class="black">Welcome to Shopping Cart</h1>
		<p><asp:Label ID="lblStatus" runat="server" Text=""></asp:Label></p>
		<form class="form" id="form1" runat="server">
			<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
			<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
			<asp:Button ID="Button1" runat="server" Text="Login" OnClick="btnLogin_Click" />
		</form>
	</div>
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>


</body>
</html>
