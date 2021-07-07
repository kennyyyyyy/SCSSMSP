<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/7/2
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>毕业情况查询</title>
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

<div class="container" style="text-align: center;width: 1000px" >
                      <h2>毕业情况查询</h2>
  <table class="table table-bordered" style=" overflow-x: hidden " >
    <tr class="info" >
      <td>毕业届别</td>
      <td >毕业类型</td>
      <td>毕业结论</td>
      <td >毕业时间</td>
      <td >毕业证书编号</td>
    </tr>
      <c:forEach items="${list1 }" var="graduation">

          <c:if test="${student.sno == graduation.sno}">
              <tr>
                  <td>${graduation.graduation_class}</td>
                  <td >${graduation.graduation_type}</td>
                  <td>${graduation.graduation_conclusion}</td>
                  <td >${graduation.graduation_data}</td>
                  <td >${graduation.graduation_id}</td>
              </tr>
          </c:if>
      </c:forEach>
  </table>
  <c:if test="${student.graduation_flag == 0}">
            <h4>未查询到毕业信息</h4>
  </c:if>




</div>
</body>
</html>
