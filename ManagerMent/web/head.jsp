<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Imperio
  Date: 2021/6/30
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/head.css">
</head>
<body>
    <nav class="navbar navbar-default  navbar-fixed-top" style="background-color: rgba(0,0,0,0.6)">
        <div class="container-fluid">

            <div class="navbar-header">
            <%-- 链接登录页面--%>
                <a href="login.jsp" target="_parent">
                    <span class="logo"></span>
<%--                        <img src="images/head/logo.png" alt="">--%>
                </a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <%--  获得登录人的信息 flag表示学生或管理员--%>
                <c:if test="${student != null}">
                    <ul class="nav navbar-nav">
                            <%--  链接到登陆后的默认状态--%>
                        <li><a href="StudentIndex.jsp" style="color: whitesmoke" target="_parent">首页</a></li>
                    </ul>

                    <p class="navbar-text" style="color: whitesmoke"> ${student.sname } </p>
                </c:if>

                <c:if test="${admin != null}">
                    <ul class="nav navbar-nav">
                            <%--  链接到登陆后的默认状态--%>
                        <li><a href="AdminIndex.jsp" style="color: whitesmoke" target="_parent">首页</a></li>
                    </ul>

                    <p class="navbar-text" style="color: whitesmoke"> 管理员 </p>
                </c:if>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="loginOut" style="color: whitesmoke" target="_parent">退出</a></li>
                </ul>

            </div>
        </div>
    </nav>
</body>
</html>
