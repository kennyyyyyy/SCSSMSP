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
  <div class="container-fluid" style="height: 100%">

      <%--  头部--%>
      <jsp:include page="head.jsp"></jsp:include>

      <div class="row">

          <div class="col-xs-2 col-md-2" style="margin-top: 54px;" id="left">
          <jsp:include page="webstudent/studentLeft.jsp"></jsp:include>
          </div>
          <div class="col-xs-8 col-md-10" style="margin-top: 54px;">
              <iframe src="webadmin/adminAdd.jsp" frameborder="0" frameBorder="0" marginwidth="0px" width="100%" height="100%" name="rightFrame" id="rightFrame"></iframe>
          </div>
      </div>
  </div>
</body>
</html>
