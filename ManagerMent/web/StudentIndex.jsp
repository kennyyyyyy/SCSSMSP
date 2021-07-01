<%--
  Created by IntelliJ IDEA.
  User: Imperio
  Date: 2021/6/30
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <title>首页</title>
  <base target="rightFrame">
  <meta charset="UTF-8">
  <link rel="stylesheet" href="bootstrap-3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/left.css">
  <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="bootstrap-3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
  <div>
    <%--  头部--%>
    <jsp:include page="head.jsp"></jsp:include>
    <div class="left" style=" width: 120%">
      <jsp:include page="webstudent/studentLeft.jsp"></jsp:include>
      <iframe src="AdminIndex.jsp" frameborder="0" style="float: right" width="100%"> </iframe>
<%--     // <div style="float: right"><jsp:include page="AdminIndex.jsp"></jsp:include></div>--%>
    </div>

  </div>
</body>
</html>
