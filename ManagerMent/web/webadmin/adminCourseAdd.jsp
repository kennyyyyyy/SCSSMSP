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
    <script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="../bootstrap-3.4.1/js/bootstrap.min.js"></script>
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
    &nbsp;
    <div style="float: right">
        <a class="btn btn-default active" href="adminCourseModify.jsp" role="button">修改学生课程信息</a>
        <a class="btn btn-default active" href="adminCourseAdd.jsp" role="button">导入学生课程信息</a>
    </div>
</div>
<div class="row">
    <div class="col-sm-6 col-md-3">
    </div>
    <div class="col-sm-6 col-md-6">
        <form class="form-horizontal" action="register" method="post">
            <div class="form-group">
                <label for="nickName" class="col-sm-2 control-label">学号</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="sno" name="sno" placeholder="学号">
                </div>
            </div>
            <div class="form-group">
                <label for="name" class="col-sm-2 control-label">课程编号</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="cno" name="cno" placeholder="课程编号">
                </div>
            </div>
            <div class="form-group">
                <label for="admission_data" class="col-sm-2 control-label">课程名称</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="cname" name="cname" placeholder="课程名称">
                </div>
            </div>
            <div class="form-group">
                <label for="graduation_data" class="col-sm-2 control-label">开课时间</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="start_time" name="start_time" placeholder="开课时间">
                </div>
            </div>
            <div class="form-group">
                <label for="major" class="col-sm-2 control-label">课程性质</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="course_ naturemajor" name="course_ nature" placeholder="课程性质">
                </div>
            </div>
            <div class="form-group">
                <label for="id_card" class="col-sm-2 control-label">学分</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="credits" name="credits" placeholder="学分">
                </div>
            </div>


            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-primary">添加</button>
                </div>
            </div>
        </form>
    </div>
    <div class="col-sm-6 col-md-3">
    </div>
</div>

</body>
</html>
