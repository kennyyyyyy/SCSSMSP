<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/7/1
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <base target="_parent">
  <meta charset="UTF-8">
  <link rel="stylesheet" href="../bootstrap-3.4.1/css/bootstrap.min.css">
  <script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="../bootstrap-3.4.1/js/bootstrap.min.js"></script>
  <style>
    td{
      text-align: center;
    }
  </style>

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


  <%--  头部--%>
  <jsp:include page="../head.jsp"></jsp:include>

  <div class="row">

    <div class="col-xs-2 col-md-2" style="margin-top: 54px;">
      <div class="list-group">
        <h4 class="list-group-item" style="">信息管理</h4>
        <a href="#" class="list-group-item">课程信息管理</a>
        <a href="adminAudit.jsp" class="list-group-item active">学籍信息管理</a>
        <a href="#" class="list-group-item">成绩管理</a>
      </div>
    </div>
    <div class="col-xs-8 col-md-10" style="margin-top: 54px;">
      <div>
        <div style="float: right">
          <a class="btn btn-default active" href="#" role="button">审核学生信息</a>
          <a class="btn btn-default active" href="#" role="button">导入学生信息</a>
        </div>
      </div>


      <div class="middle">
        <table class="table table-bordered" style=" overflow-x: hidden " >
          <tr class="success">
            <th width="125px" style="text-align: center">学号</th>
            <th width="50px" style="text-align: center">性别</th>
            <th width="80px" style="text-align: center">姓名</th>
            <th width="82px" style="text-align: center">籍贯</th>
            <th width="100px" style="text-align: center">出生日期</th>
            <th width="50px" style="text-align: center">民族</th>
            <th width="100px" style="text-align: center">入学时间</th>
            <th width="100px" style="text-align: center">毕业时间</th>
            <th  style="text-align: center">专业</th>
            <th  style="text-align: center">电子邮箱</th>
            <th  style="text-align: center">邮政编码</th>
            <th  style="text-align: center">操作</th>

          </tr>
          <tr class="success">
            <td>201908010327</td>
            <td>男</td>
            <td>数次</td>
            <td>湖南郴州</td>
            <td>2001-10-03</td>
            <td>汉族</td>
            <td>2019-09-11</td>
            <td>2023-09-11</td>
            <td>计算机科学与技术</td>
            <td>2801916353@qq.com</td>
            <td>423000</td>
            <td>
								<span>
									<button class="btn btn-info btn-xs" >审核</button>
								</span>
              <button class="btn btn-primary btn-xs">修改</button>
            </td>
          </tr>
          </tr>
        </table>
      </div>
      <%--      <jsp:include page="webadmin/adminAudit.jsp"></jsp:include>--%>
    </div>
  </div>

</body>
</html>
