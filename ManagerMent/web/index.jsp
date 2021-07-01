<%--
  Created by IntelliJ IDEA.
  User: Imperio
  Date: 2021/7/1
  Time: 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
  <title>登录首页</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="Badge Sign In Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
  />

  <!-- Custom Theme files -->
  <link href="css/loginStyle.css" rel="stylesheet" type="text/css" media="all" />
  <!-- //Custom Theme files -->
</head>

<body>
<!-- main -->
<div class="main">

  <div class="login-form">
    <h2>学籍管理系统登录</h2>
    <div class="agileits-top">
<%--     登录的servlet--%>
      <form action="StudentIndex.jsp" method="post">
        <div class="styled-input">
          <input type="text" name="User Name" required="" />
          <label>用户名或学号</label>
          <span></span>
        </div>
        <div class="styled-input">
          <input type="password" name="Password" required="">
          <label>密码</label>
          <span></span>
        </div>
        <div class="wthree-text">
          <ul>
            <li>
              <div class="LoginType">
                <input type="radio" id="LoginType1" value="1" name="LoginType">
                <label for="LoginType1"> 学生</label>
              </div>
              <div class="LoginType floatright">
                <input type="radio" id="LoginType2" value="2" name="LoginType">
                <label for="LoginType2"> 管理员</label>
              </div>
            </li>
          </ul>
          <div class="clear"> </div>
        </div>
        <div class="agileits-bottom">
          <input type="submit" value="登录">
        </div>
      </form>
    </div>

  </div>
</div>
<!-- //main -->
<!-- copyright -->
<div class="copyright">

</div>
<!-- //copyright -->
</body>

</html>
