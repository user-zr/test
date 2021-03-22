<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>局部刷新</title>
    <script type="text/javascript">
        //使用内存中的异步对象，代替浏览器发起请求，异步对象使用js创建和管理
        function doAjax() {
            //1.创建异步对象
            var xml = new XMLHttpRequest()
            //2.绑定事件
            xml.onreadystatechange = function () {
                if (xml.status == 200 && xml.readyState == 4) {
                 alert( xml.responseText)
                }
            }
            //3.初始请求数据
            var name = document.getElementById("n").value;
            var weight = document.getElementById("w").value;
            var height = document.getElementById("h").value;


            var param = "n=" + name + "&w=" + weight + "&h=" + height
            xml.open("get", "two?" + param, true)
            //4.发起请求
            xml.send()
        }

    </script>
</head>
<body>
<center>
    姓名<input type="text" id="n"><br/>
    体重<input type="text" id="w"><br/>
    身高<input type="text" id="h"><br/>
    <input type="submit" value="提交" onclick="doAjax()">
</center>

</body>
</html>
