<%--
  Created by IntelliJ IDEA.
  User: Imperio
  Date: 2021/11/29
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="bootstrap-3.4.1/css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="bootstrap-3.4.1/js/bootstrap.min.js"></script>
    <title>首页</title>

    <link rel="stylesheet" href="css/head.css">
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
  <div class="container-fluid">
    <nav class="navbar navbar-default navbar-fixed-top" style=" margin-bottom: 5px; border: 0">
      <div class="container-fluid row">
        <div class="navbar-header col-md-1 col-xs-1">
            <span class="logo"></span>
        </div>

        <div class="navbar-text col-md-9 col-xs-9" style="text-align: center; margin-left: 5%">
          <p style="font-size: 18px">学籍管理系统</p>
        </div>

        <%--    实现鼠标放上去显示下拉窗口    --%>
        <ul class="nav navbar-nav navbar-right  col-md-1 col-xs-1">
          <li><a href="login.jsp" style="color: whitesmoke">登录</a></li>
        </ul>
      </div>
    </nav>


    <div class="row" style="height: 700px; margin: 55px 2px 0">

      <%--   通告   --%>
      <div class="col-md-2 col-xs-2 notice">
        <div>
          <ul class="notice">
            <li><span><img src="images/leftico02.png" alt=""><a href="#">关于进一步加强校园出入管理的通告</a></span></li>
            <li><span><img src="images/leftico02.png" alt=""><a href="#">关于进一步加强校园出入管理的通告</a></span></li>
            <li><span><img src="images/leftico02.png" alt=""><a href="#">关于进一步加强校园出入管理的通告</a></span></li>
            <li><span><img src="images/leftico02.png" alt=""><a href="#">关于进一步加强校园出入管理的通告</a></span></li>
            <li><span><img src="images/leftico02.png" alt=""><a href="#">关于进一步加强校园出入管理的通告</a></span></li>

          </ul>
        </div>
      </div>


      <%--   轮播图   --%>
      <div class="col-md-8 col-xs-8" style="background-color: darkgrey; height: 100%">
        <div class="box" style="height: 100%; background-color: #843534;margin-left: 0;margin-left: 0" >
            <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000" >
                <!-- 轮播（Carousel）指标 -->

                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="images/index/a.jpg" alt="First slide" style="width: 100%; height: 700px">
                    </div>
                    <div class="item">
                        <img src="images/index/b.jpg" alt="Second slide" style="width:100%; height: 700px">
                    </div>
                    <div class="item">
                        <img src="images/index/c.jpg" alt="Third slide" style="width: 100%; height: 700px">
                    </div>
                </div>
                <a class="carousel-control left" href="#myCarousel" data-slide="prev"></a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next"></a>

            </div>
        </div>

        <div class="center-buttom">
          fff
        </div>
      </div>

      <%--   新闻   --%>
      <div class="col-md-2 col-xs-2" style="background-color: #2aabd2 ; height: 100%">
        ffffffff
      </div>
    </div>
  </div>
</body>
</html>
