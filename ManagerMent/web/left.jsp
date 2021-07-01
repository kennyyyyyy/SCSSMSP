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
  <meta charset="UTF-8">
  <base target="rightFrame">
  <title>Document</title>
  <link href="css/left.css" rel="stylesheet" type="text/css" />
  <script language="JavaScript" src="js/jquery-1.x.js"></script>
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
<div class="lefttop"><span></span>功能菜单</div>
<dl class="leftmenu">
  <dd>
    <div class="title"> <span><img src="../src/manageadmin/images/leftico05.png" /></span>购物后台管理 </div>
    <ul class="menuson">
      <li><cite></cite>添加商品</a><i></i></li>
      <li class="active"><cite></cite><a href="shoplist.html">商品列表</a><i></i></li>
      <li><cite></cite>商品类型</li>
    </ul>
  </dd>
  <dd>
    <div class="title"> <span><img src="../src/manageadmin/images/leftico02.png" /></span>影视后台管理 </div>
  </dd>
  <dd>
    <div class="title"><span><img src="../src/manageadmin/images/leftico05.png" /></span>餐饮后台管理</div>
  </dd>
  <dd>
    <div class="title"><span><img src="../src/manageadmin/images/leftico04.png" /></span>订单管理</div>
  </dd>
  <dd>
    <div class="title"><span><img src="../src/manageadmin/images/leftico04.png" /></span>交易记录</div>
  </dd>
  <dd>
    <div class="title"><span><img src="../src/manageadmin/images/leftico06.png" /></span>统计报表</a>
    </div>
  </dd>
  <dd>
    <div class="title"><span><img src="../src/manageadmin/images/leftico04.png" /></span>权限分配</div>
  </dd>
  <dd>
    <div class="title"><span><img src="../src/manageadmin/images/leftico08.png" /></span>修改密码</div>
  </dd>
  <dd>
    <div class="title"><span><img src="../src/manageadmin/images/leftico07.png" /></span>系统设置</div>
  </dd>
</dl>

</body>

</html>