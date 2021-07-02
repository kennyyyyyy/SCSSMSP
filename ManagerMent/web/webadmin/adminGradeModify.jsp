<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/7/1
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <base target="rightFrame">
  <meta charset="UTF-8">
  <link rel="stylesheet" href="../bootstrap-3.4.1/css/bootstrap.min.css">
  <script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="../bootstrap-3.4.1/js/bootstrap.min.js"></script>
  <style>
    th {
      text-align: center;
    }
    td {
      text-align: center;
    }
    /* .middle {
         width: 1000px;
     }*/
  </style>
</head>
<body>
<div>
  <div style="float:left;">
    <form class="form-inline" >
      <div class="form-group">
        <label for="exampleInputName2">学号</label>
        <input type="text" class="form-control" id="exampleInputName2" placeholder="请输入学号">
      </div>
      <button type="submit" class="btn btn-default">搜索</button>
    </form>
  </div>

  <div style="float: right">
    <a class="btn btn-default active" href="#" role="button">修改学生成绩信息</a>
    <a class="btn btn-default active" href="#" role="button">导入学生成绩信息</a>
  </div>
</div>
<div class="middle">
  <table class="table table-bordered" style=" overflow-x: hidden " >
    <tr class="success">
      <th width="125px" style="text-align: center">学号</th>
      <th width="85px" style="text-align: center">课程编号</th>
      <th width="25px" style="text-align: center">成绩</th>
      <th width="80px"  style="text-align: center">操作</th>
    </tr>
    <tr class="success">
      <td>201908010327</td>
      <td>12345</td>
      <td>88</td>
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
</body>
</html>
