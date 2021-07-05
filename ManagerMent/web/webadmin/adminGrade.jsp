<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <form class="form-inline" action="../searchScore">
            <div class="form-group">
                <label for="searchScoreSno">学号</label>
                <input type="text" class="form-control" id="searchScoreSno" name="searchScoreSno" placeholder="${searchScoreSno}">
            </div>
            <div class="form-group">
                <label for="searchScoreCno">课程编号</label>
                <input type="text" class="form-control" id="searchScoreCno" name="searchScoreCno" placeholder="${searchScoreCno}">
            </div>
            <button type="submit" class="btn btn-default">搜索</button>
        </form>
    </div>

    <div style="float: right">
        <a class="btn btn-default active" href="${pageContext.request.contextPath }/webadmin/adminGradeModify.jsp" role="button">修改学生成绩信息</a>
        <a class="btn btn-default active" href="${pageContext.request.contextPath }/webadmin/adminGradeAdd.jsp" role="button">导入学生成绩信息</a>
    </div>
</div>
<div class="middle">
    <table class="table table-bordered" style=" overflow-x: hidden " >
        <tr class="success">
            <th>序号</th>
            <th>学号</th>
            <th>课程编号</th>
            <th>成绩</th>

        </tr>




        <c:forEach items="${scoreList}" var="score" varStatus="status">
            <tr class="success">
                <td>${status.index }</td>
                <td>${score.sno }</td>
                <td>${score.cno }</td>
                <td>${score.grade }</td>
            </tr>
        </c:forEach>
    </table>
</div>
<%--      <jsp:include page="webadmin/adminAudit.jsp"></jsp:include>--%>
</body>
</html>
