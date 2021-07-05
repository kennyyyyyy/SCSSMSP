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
    <script type="text/javascript" src="../js/adminJS/adminCourseAdd.js"></script>
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
    <div class="container-fluid">
        <div style="float: right">
            <a class="btn btn-default active" href="${pageContext.request.contextPath}/webadmin/adminCourse.jsp" role="button">返回</a>
        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-sm-6 col-md-3">
            </div>

            <div class="col-sm-6 col-md-6" >
                <form class="form-horizontal" action="../addCourse" method="post" id="addForm">
                <div class="form-group">
                    <label for="cno" class="col-sm-2 control-label">课程编号</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="cno" name="cno" placeholder="课程编号" onblur="checkCno(value, 0)" onfocus="removeCnoInfo()">
                    </div>
                </div>
                <div class="form-group">
                    <label for="cname" class="col-sm-2 control-label">课程名称</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="cname" name="cname" placeholder="课程名称">
                    </div>
                </div>
                <div class="form-group">
                    <label for="course_nature" class="col-sm-2 control-label">课程性质</label>
                    <div class="col-sm-10">
                        <select class="selectpicker show-tick form-control" id="course_nature" name="course_nature">
                        <option value="0">公共课</option>
                        <option value="1">选修课</option>
                        <option value="2">专业课</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="credits" class="col-sm-2 control-label">学分</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="credits" name="credits" placeholder="学分">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-primary" id="">添加</button>
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
