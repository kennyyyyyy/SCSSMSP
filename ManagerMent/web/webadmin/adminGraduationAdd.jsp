<%--
  Created by IntelliJ IDEA.
  User: Imperio
  Date: 2021/7/7
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>毕业信息添加</title>
    <base target="rightFrame">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../bootstrap-3.4.1/css/bootstrap.min.css">
    <script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="../bootstrap-3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">

    <div class="row" style="margin-top: 50px">
        <div class="col-sm-6 col-md-3">
        </div>

        <div class="col-sm-6 col-md-6" >
            <form class="form-horizontal" action="" method="post" id="addForm">
                <div class="form-group">
                    <label for="cno" class="col-sm-2 control-label">学号</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="cno" name="cno" placeholder="学号" >
                    </div>
                </div>
                <div class="form-group">
                    <label for="type" class="col-sm-2 control-label">毕业类型</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="type" name="type" placeholder="毕业类型">
                    </div>
                </div>
                <div class="form-group">
                    <label for="time" class="col-sm-2 control-label">毕业时间</label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" id="time" name="time" placeholder="毕业类型">
                    </div>
                </div>
                <div class="form-group">
                    <label for="num" class="col-sm-2 control-label">毕业编号</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="num" name="num" placeholder="毕业编号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="class" class="col-sm-2 control-label">毕业届别</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="class" name="class" placeholder="毕业届别">
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
