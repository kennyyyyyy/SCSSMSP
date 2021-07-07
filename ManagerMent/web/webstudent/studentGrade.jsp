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
  <title>课程成绩查询</title>
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
<div class="container" style="text-align: center;width: 1000px">
      <div>
        <div style="float:left;">
          <form class="form-inline" >
            <div class="form-group">
              <label for="exampleInputName2">学号</label>
              <input type="text" class="form-control" id="exampleInputName2" placeholder="请输入课程编号">
            </div>
            <button type="submit" class="btn btn-default">搜索</button>
          </form>
        </div>


      </div>
      <div class="middle">
        <table class="table table-bordered" style=" overflow-x: hidden " >
          <tr class="info">
            <th width="85px" style="text-align: center">课程编号</th>
            <th width="85px" style="text-align: center">课程名称</th>
            <th width="25px" style="text-align: center">成绩</th>

          </tr>
          <tr class="">
            <td>12345</td>
            <td>java程序设计</td>
            <td>88</td>
          </tr>
          </tr>
        </table>
      </div>
      <%--      <jsp:include page="webadmin/adminAudit.jsp"></jsp:include>--%>
</div>
</body>
</html>
