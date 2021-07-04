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
            <h2>学籍卡片</h2>
            <table class="table table-bordered" style=" overflow-x: hidden " >
                <tr class="success" >
                    <td><img src="/images/1.jpg" width="100px" height="55px"></td>
                    <td >姓名</td>
                    <td width="80px">谭懿</td>
                    <td >姓别</td>
                    <td width="50px">男</td>
                    <td >学号</td>
                    <td width="125px" colspan="2">201908010327</td>

                </tr>

                <tr class="success">
                    <td >民族</td>
                    <td width="50px">汉族</td>
                    <td >出生日期</td>
                    <td width="100px">2001-10-03</td>
                    <td>邮政编码</td>
                    <td>423000</td>
                    <td >籍贯</td>
                    <td width="100px">湖南郴州</td>
                </tr>


                <tr class="success">
                    <td >身份证号</td>
                    <td colspan="3">431003200110036511</td>
                    <td>电子邮箱</td>
                    <td colspan="3">2801916353@qq.com</td>
                </tr>

            </table>
    
</div>
</body>
</html>
