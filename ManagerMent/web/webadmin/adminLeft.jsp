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
  <meta charset="UTF-8">
  <title>left</title>
  <link href="../css/left.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
  <script type="text/javascript">
    $(function() {
      $(".menuson li").click(function() {
        $(".menuson li.active").removeClass("active")
        $(this).addClass("active");
      });

      $('.title').click(function() {
        var $ul = $(this).next('ul');
        $('dd').find('ul').slideUp();
        if ($ul.is(':visible')) {
          $(this).next('ul').slideUp();
        } else {
          $(this).next('ul').slideDown();
        }
      });
    })
  </script>
</head>

<body>
<div class="lefttop"><span></span>学籍管理系统</div>
<dl class="leftmenu">
  <dd>
    <div class="title"> <span><img src="../images/leftico05.png" /></span>信息管理 </div>
    <ul class="menuson">
      <li class="active"><cite></cite>课程信息管理<i></i></li>
      <li><cite></cite>学籍信息管理</li>
      <li><cite></cite>成绩管理</li>
    </ul>
  </dd>
</dl>
</body>

</html>
