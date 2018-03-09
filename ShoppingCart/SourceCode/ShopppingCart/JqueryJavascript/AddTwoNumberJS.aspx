<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTwoNumberJS.aspx.cs" Inherits="JqueryJavascript.AddTwoNumber" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function Message() {
            var x = document.getElementById("num1").value;
            var y = document.getElementById("num2").value;
            var total = Number(x) + Number(y);
            alert(total);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input type="text" id="num1" />
        <input type="text" id="num2" />
            <input type="button" onclick="Message()" value="Submit" />
    
    </div>
    </form>
</body>
</html>
