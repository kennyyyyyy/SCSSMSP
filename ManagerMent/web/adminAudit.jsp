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
  <meta charset="UTF-8">
  <link rel="stylesheet" href="bootstrap-3.4.1/css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="bootstrap-3.4.1/js/bootstrap.min.js"></script>
  <style>
    .middle {
      width: 500px;
    }
  </style>
</head>
<body>
<div style="float: right">
  <a class="btn btn-default active" href="#" role="button">审核学生信息</a>
  <a class="btn btn-default active" href="#" role="button">导入学生信息</a>
</div>

<div class="middle">
<table class="table table-hover" style=" overflow-x: hidden " >
  <tr class="info">
    <th width="1%">学号</th>
    <th width="1%">姓名</th>
    <th>籍贯</th>
    <th>出生日期</th>

  </tr>
  <tr>

    <td>55555555555</td>
    <td>55555555555</td>
    <td>55555555555</td>
    <td>55555555555</td>
    <td>55555555555</td>
    <td>

								<span>
									<button class="btn btn-info btn-xs" >审核</button>&nbsp;&nbsp;
								</span>

                            <span><button class="btn btn-primary btn-xs">修改</button></span>


    </td>
  </tr>
  <tr>
    <td>1111111111</td>
    <td>1111111111</td>
    <td>1111111111</td>
    <td>1111111111</td>
    <td>1111111111</td>
    <td>1111111111</td>
    <td>1111111111</td>
    <td>1111111111</td>

    <td>

								<span>
									<button class="btn btn-info btn-xs" >审核</button>&nbsp;&nbsp;
								</span>


      <button class="btn btn-primary btn-xs">修改</button>

    </td>
  </tr>
</table>
</div>
</body>
</html>
