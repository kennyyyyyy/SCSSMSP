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
  <script type="text/javascript" src="../js/adminJS/adminAdd.js"></script>
  <script type="text/javascript" src="../js/adminJS/checkSno.js"></script>

</head>
<body>

  <div>

    <div style="float: right">
      <a class="btn btn-default active" href="adminAudit.jsp" role="button">审核学生信息</a>
      <a class="btn btn-default active" href="adminGradeAdd.jsp" role="button">导入学生信息</a>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-6 col-md-3">
    </div>
    <div class="col-sm-6 col-md-6">
      <form class="form-horizontal" action="../import" method="post" id="addForm">
        <div class="form-group">
          <label for="sno" class="col-sm-2 control-label">学号</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="sno" name="sno" placeholder="学号" onblur="checkSno(value, 0)" onfocus="removeSnoInfo()">
          </div>
        </div>
        <div class="form-group">
          <label for="name" class="col-sm-2 control-label">姓名</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="name" name="name" placeholder="姓名">
          </div>
        </div>
        <div class="form-group">
          <label for="sex" class="col-sm-2 control-label">性别</label>
          <div class="col-sm-10" style="margin-top: -6px;">
            <div class="radio" >
              <label class="radio-inline">
                <input type="radio" name="sex" id="sex" value="1" required> 男
              </label>
              <label class="radio-inline">
                <input type="radio" name="sex" id="sex" value="0"> 女
              </label>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label for="admission_data" class="col-sm-2 control-label">入学时间</label>
          <div class="col-sm-10">
            <input type="date" class="form-control" id="admission_data" name="admission_data" placeholder="入学时间">
          </div>
        </div>

        <div class="form-group">
          <label for="major" class="col-sm-2 control-label">专业</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="major" name="major" placeholder="专业">
          </div>
        </div>
        <div class="form-group">
          <label for="id_card" class="col-sm-2 control-label">身份证号</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="id_card" name="id_card" placeholder="身份证号">
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

</body>
</html>
