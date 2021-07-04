<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/7/1
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学籍信息管理</title>
    <base target="rightFrame">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../bootstrap-3.4.1/css/bootstrap.min.css">
    <script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="../bootstrap-3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.validate.js"></script>

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/jqfile/css/uploadify.css" >
    <script type="text/javascript" src="${pageContext.request.contextPath }/jqfile/js/jquery.uploadify.v2.1.3.js"></script>
    <script type="text/javascript" src="../jqfile/js/swfobject.js"></script>
    <script type="text/javascript" src="../js/fileUpload.js"></script>

    <style>
        td{
            text-align: center;
        }
    </style>

</head>
<body>

<div class="container" style="text-align: center;width: 1000px">
    <div class="middle">
        <table class="table table-bordered" style=" overflow-x: hidden" >
        <h4 style="float:left;">谭懿</h4>
        <h4 style="float:right;">201908010327</h4>
        <tr class="success">
            <th width="82px" style="text-align: center">籍贯</th>
            <th width="100px" style="text-align: center">出生日期</th>
            <th width="50px" style="text-align: center">民族</th>
            <th  style="text-align: center">电子邮箱</th>
            <th  style="text-align: center">邮政编码</th>
            <th  style="text-align: center">照片</th>

        </tr>
        <tr class="success">

            <td>湖南郴州</td>
            <td>2001-10-03</td>
            <td>汉族</td>
            <td>2801916353@qq.com</td>
            <td>423000</td>


        </tr>

        <tr class="success">
            <td>
                <button class="btn btn-primary btn-xs">修改</button>
            </td>
            <td>
                <button class="btn btn-primary btn-xs">修改</button>
            </td>
            <td>
                <button class="btn btn-primary btn-xs">修改</button>
            </td>
            <td>
                <button class="btn btn-primary btn-xs">修改</button>
            </td>
            <td>
                <button class="btn btn-primary btn-xs">修改</button>
            </td>

        </tr>

    </table>
    </div>
    <div class="col-sm-10">
        <input id="custom_indexfile_upload" type="file" name="filedata" />
        <div id="showimg"></div>
        <input type="hidden" name="photos" id="photos">
    </div>
</div>


</body>
</html>
