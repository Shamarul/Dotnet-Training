<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTwoNumberJQ.aspx.cs" Inherits="JqueryJavascript.AddTwoNumberJQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        function Message() {
            var x = $("#num1").val();
            var y = $("#num2").val();
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
