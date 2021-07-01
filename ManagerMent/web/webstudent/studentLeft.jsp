<%--
  Created by IntelliJ IDEA.
  User: Imperio
  Date: 2021/7/1
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>

  <meta charset="UTF-8">
  <link rel="stylesheet" href="bootstrap-3.4.1/css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="bootstrap-3.4.1/js/bootstrap.min.js"></script>

  <script type="text/javascript">
    $(function() {
      $(".list-group a").click(function() {
        $(".list-group a.active").removeClass("active")
        $(this).addClass("active");
      });
    })
  </script>
</head>
<body>
  <div class="list-group">
    <h4 class="list-group-item" style="">学籍信息</h4>
    <a href="#" class="list-group-item active">学籍卡片</a>
    <a href="#" class="list-group-item">毕业情况查询</a>
    <h4 class="list-group-item">课程信息</h4>
    <a href="#" class="list-group-item">课程成绩查询</a>
    <a href="#" class="list-group-item">课程信息查询</a>
  </div>

</body>
</html>
