<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <script type="text/javascript">
        function find() {
            //1.创建异步对象
            var xmlHttp = new XMLHttpRequest()

            //2.绑定事件
            xmlHttp.onreadystatechange = function () {
                if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                    var data = xmlHttp.responseText;
                    var jsonObj=eval("("+data+")")
                    document.getElementById("name").value =jsonObj.name
                    document.getElementById("age").value =jsonObj.age
                }
            }


            //3.初始化请求
           var idd="id="+ document.getElementById("id").value

            xmlHttp.open("get", "json?"+idd, true)

            //4.发送请求
            xmlHttp.send()
        }
    </script>
</head>
<body>
<div align="center">
    <table>
        <tr>
            <td>
                编号：<input type="text" id="id"></td>
            <td>
                <input type="submit" value="查询" onclick="find()"/>
            </td>
        </tr>
        <tr>
            <td>
                姓名：<input type="text" id="name">
            </td>
        </tr>
        <tr>
            <td>
                年龄：<input type="text" id="age">
            </td>
        </tr>
    </table>
</div>
</body>
</html>
