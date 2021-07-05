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
    <title>添加课程信息</title>
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
                <form class="form-inline" action="../searchCourse">
                    <div class="form-group">
                        <label for="inputInfo">搜索信息</label>
                        <input type="text" class="form-control" id="inputInfo" name="inputInfo" placeholder="${inputInfo}">
                    </div>
                    <div class="form-group" style="margin-left: 15px">
                        <label for="inputCN">课程性质</label>
                        <select class="selectpicker show-tick form-control" id="inputCN" name="inputCN">
                            <option value="3">请选择</option>
                            <option value="0">公共课</option>
                            <option value="1">选修课</option>
                            <option value="2">专业课</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
            </div>

            <div style="float: right">
                <a class="btn btn-default active" href="${pageContext.request.contextPath}/webadmin/adminCourseAdd.jsp" role="button">导入课程信息</a>
            </div>
        </div>
        <div class="middle">
            <table class="table table-bordered" style=" overflow-x: hidden " >
                <tr class="success">
                    <th>序号</th>
                    <th>课程编号</th>
                    <th>课程名称</th>
                    <th>课程性质</th>
                    <th>学分</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${courseList}" var="course" varStatus="status">
                    <tr class="success">
                        <td>${status.index }</td>
                        <td>${course.cno }</td>
                        <td>${course.cname }</td>
                        <td>
                            <c:if test="${course.courseNature == 0}">
                                公共课
                            </c:if>
                            <c:if test="${course.courseNature == 1}">
                                选修课
                            </c:if>
                            <c:if test="${course.courseNature == 2}">
                                专业课
                            </c:if>
                        </td>
                        <td>${course.credits }</td>
                        <td>
                            <button class="btn btn-info btn-xs" >修改</button>
                            <button class="btn btn-primary btn-xs">删除</button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

</body>
</html>
