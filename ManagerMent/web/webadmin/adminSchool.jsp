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
    <title>学籍管理首页</title>
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
    </style>
</head>
<body>

<div>
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
            <a class="btn btn-default active" href="#" role="button">修改学生学籍信息</a>
            <a class="btn btn-default active" href="#" role="button">导入学生学籍信息</a>
        </div>
    </div>
    <div class="middle">
        <table class="table table-bordered" style=" overflow-x: hidden" >
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
            </tr>
            </tr>
        </table>
    </div>
    <%--      <jsp:include page="webadmin/adminAudit.jsp"></jsp:include>--%>
</div>
</div>
</body>
</html>
