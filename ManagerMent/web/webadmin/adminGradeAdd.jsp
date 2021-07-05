<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/7/1
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <base target="rightFrame">
  <meta charset="UTF-8">
  <link rel="stylesheet" href="../bootstrap-3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/errorInfo.css">
  <script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="../bootstrap-3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="../js/jquery.validate.js"></script>
  <script type="text/javascript" src="../js/adminJS/adminGradeAdd.js"></script>
  <script type="text/javascript" src="../js/adminJS/checkSno.js"></script>
  <script type="text/javascript" src="../js/adminJS/checkCno.js"></script>
  <style>
    /*  body {
        font-family:Verdana;

        background: url(../images/banner.jpg)no-repeat center 0px;
        background-attachment: fixed;
        background-size: cover;
      }*/
  </style>
</head>
<body>
<div>
   <div>
        <div style="float: right">
        <a class="btn btn-default active" href="adminGradeModify.jsp" role="button">修改学生成绩信息</a>
        <a class="btn btn-default active" href="adminGradeAdd.jsp" role="button">导入学生成绩信息</a>
        </div>
   </div>
        <div class="row">
          <div class="col-sm-6 col-md-3">
          </div>
          <div class="col-sm-6 col-md-6">
            <form class="form-horizontal" action="../addScore" method="post"  id="addForm">
              <div class="form-group">
                <label for="sno" class="col-sm-2 control-label">学号</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="sno" name="sno" placeholder="学号" onblur="checkSno(value, 1)" onfocus="removeSnoInfo()">
                </div>
              </div>
              <div class="form-group">
                <label for="cno" class="col-sm-2 control-label">课程编号</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="cno" name="cno" placeholder="课程编号" onblur="checkCno(value)" onfocus="removeCnoInfo()">
                </div>
              </div>

              <div class="form-group">
                <label for="grade" class="col-sm-2 control-label">成绩</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="grade" name="grade" placeholder="成绩">
                </div>
              </div>

              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-primary" id="submitBottom">添加</button>
                </div>
              </div>
            </form>
          </div>
          <div class="col-sm-6 col-md-3">
          </div>
        </div>
</div>
</body>
</html>
