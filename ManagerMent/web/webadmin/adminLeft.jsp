<%--
  Created by IntelliJ IDEA.
  User: Imperio
  Date: 2021/7/1
  Time: 14:15
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
    <h4 class="list-group-item" style="">信息管理</h4>
    <a href="#" class="list-group-item active">课程信息管理</a>
    <a href="#" class="list-group-item">学籍信息管理</a>
    <a href="#" class="list-group-item">成绩管理</a>
  </div>

</body>
</html>


<body>
<div class="lefttop"><span></span>学籍管理系统</div>
<dl class="leftmenu">
  <dd>
    <div class="title"> <span><img src="../images/leftico05.png" /></span>信息管理 </div>
    <ul class="menuson">
      <li class="active"><cite></cite>课程信息管理<i></i></li>
      <li><cite></cite>学籍信息管理<i></i></li>
      <li><cite></cite>成绩管理<i></i></li>
    </ul>
  </dd>
</dl>
</body>

</html>
