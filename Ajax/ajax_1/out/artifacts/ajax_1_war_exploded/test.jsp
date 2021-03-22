<%--
  Created by IntelliJ IDEA.
  User: 23634
  Date: 2021/3/8
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        function doAjax() {
            //1.创建异步对象
            var xmlHttp = new XMLHttpRequest()
            //2.绑定数据
            xmlHttp.onreadystatechange = function () {
                // alert(xmlHttp.readyState)
                if (xmlHttp.status == "200" && xmlHttp.readyState == "4") {
                    alert(xmlHttp.responseText)
                }
            }

            //3.初始化数据
            var name = document.getElementById("name").value
            var weight = document.getElementById("weight").value
            var height = document.getElementById("height").value
            var param = "name=" + name + "&weight=" + weight + "&height=" + height
            xmlHttp.open("get", "/test?"+param, true)
            //4.发送请求
            xmlHttp.send()
        }
    </script>
</head>
<body>
<div align="center">
    姓名<input type="text" id="name"><br/>
    体重<input type="text" id="weight"><br/>
    身高<input type="text" id="height"><br/>
    <input type="submit" value="测试" onclick="doAjax()">
</div>
</body>
</html>
