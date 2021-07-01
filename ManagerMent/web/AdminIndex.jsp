<%--
  Created by IntelliJ IDEA.
  User: Imperio
  Date: 2021/6/30
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>首页</title>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="bootstrap-3.4.1/css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="bootstrap-3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container-fluid" style="height: 100%">

  <%--  头部--%>
  <jsp:include page="head.jsp"></jsp:include>

  <div class="row">

    <div class="col-xs-2 col-md-2" style="margin-top: 54px;">
      <jsp:include page="webadmin/adminLeft.jsp"></jsp:include>
    </div>
    <div class="col-xs-8 col-md-10" style="margin-top: 54px;">
       <iframe src="webadmin/adminAudit.jsp" frameborder="0" width="100%"> </iframe>
<%--      <jsp:include page="webadmin/adminAudit.jsp"></jsp:include>--%>
    </div>
  </div>
</div>
</body>
</html>
