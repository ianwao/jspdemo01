<%--
  Created by IntelliJ IDEA.
  User: 72733
  Date: 2019/10/8
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页3秒跳转登录页</title>
</head>
<body>
<div>注册成功！--<span id="time">3</span>秒后跳转到登陆页面--</div>
</body>
<script>
    onload=function(){
        setInterval(go, 1000);
    };
    var x=3; //利用了全局变量来执行
    function go(){
        x--;
        if(x>0){
            document.getElementById("time").innerHTML=x;  //每次设置的x的值都不一样了。
        }else{
            location.href='https://www.baidu.com';  // 设置注册页面
        }
    }
</script>
</html>
