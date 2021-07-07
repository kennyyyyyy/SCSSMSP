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
    <title>学生学籍卡片</title>
    <base target="rightFrame">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../bootstrap-3.4.1/css/bootstrap.min.css">
    <script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="../bootstrap-3.4.1/js/bootstrap.min.js"></script>
    <!--jquery提示筐插件-->
    <link rel="stylesheet" href="../toastr/toastr.css">
    <script type="text/javascript" src="../toastr/toastr.js"></script>
    <style>
        th {
            text-align: center;
        }
        td {
            text-align: center;
        }
    </style>
    <script>

    </script>
</head>
<body>

<div class="container" style="text-align: center;width: 1000px" >
            <h2>学籍卡片</h2>
            <table class="table table-bordered" style=" overflow-x: hidden " >
                <tr class="info" >
                    <td><img src="/images/${student.photo}" style="width: 100px;height: 80px"></td>
                    <td >姓名</td>
                    <td>${student.sname}</td>
                    <td >姓别</td>
                    <td>${student.sex==1?"男":"女"}</td>
                    <td >学号</td>
                    <td colspan="2">${student.sno}</td>
                </tr>

                <tr class="info">
                    <td >民族</td>
                    <td >${student.national}</td>
                    <td >出生日期</td>
                    <td>${student.birth}</td>
                    <td>邮政编码</td>
                    <td>${student.postal_code}</td>
                    <td >籍贯</td>
                    <td >${student.place}</td>
                </tr>


                <tr class="info">
                    <td >身份证号</td>
                    <td colspan="3">${student.id_card}</td>
                    <td>电子邮箱</td>
                    <td colspan="3">${student.email}</td>
                </tr>

                        </table>

            </div>


</body>
</html>
