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
        /* .middle {
             width: 1000px;
         }*/
    </style>
    <script>
        toastr.options = {"timeOut":1000};
        var sno = 0;
        var obj = null;
        var cno = 0;
        var grade = 0;
        //jquery ready函数
        $(function (){
            $('#ok').click(function (){

                $.ajax({
                    url:"del",//请求的url地址
                    type:"post",//请求方式
                    candidateType:"json",//json传输格式
                    async:true,//是否异步传输
                    data:"sno="+sno+"&cno="+cno,//传入的参数
                    success:function (data){ //接受服务端响应的数据
                        if (data == 1) {
                            //审核成功：1把当前的对话框关闭 2 把审核按钮变成审核文字
                            (($(obj).parents("tr"))).html(null);
                            toastr.success("删除成功");
                        }else {
                            //审核失败： 1关闭对话框 2 提示用户审核失败
                            toastr.warning("服务器异常，审核失败");
                        }
                        $('#myModal').modal('hide');
                    }
                })
            })
        })


        $(function (){
            $('#fine').click(function (){
                grade = $('#grade').val();
                $.ajax({
                    url:"updateGrade",//请求的url地址
                    type:"post",//请求方式
                    candidateType:"json",//json传输格式
                    async:true,//是否异步传输
                    data:"sno="+sno+"&cno="+cno+"&grade="+grade,//传入的参数
                    success:function (data){ //接受服务端响应的数据
                        if (data == 1) {
                            //审核成功：1把当前的对话框关闭 2 把审核按钮变成审核文字
                            ((($(obj).parents("td")).siblings()).eq(3)).html(grade);
                            var grade_point = grade;
                            if (grade_point < 60) {
                                ((($(obj).parents("td")).siblings()).eq(4)).html("0");
                            }
                            else if (grade_point >=60 && grade_point <=62) {
                                ((($(obj).parents("td")).siblings()).eq(4)).html("1.0");
                            }
                            else if (grade_point >62 && grade_point <= 65) {
                                ((($(obj).parents("td")).siblings()).eq(4)).html("1.3");
                            }
                            else if (grade_point >65 && grade_point <=69){
                                ((($(obj).parents("td")).siblings()).eq(4)).html("1.7");
                            }
                            else if (grade_point > 69 && grade_point <= 72) {
                                ((($(obj).parents("td")).siblings()).eq(4)).html("2.0");
                            }
                            else if (grade_point > 72 && grade_point<= 75) {
                                ((($(obj).parents("td")).siblings()).eq(4)).html("2.3");
                            }
                            else if (grade_point > 75 && grade_point <= 79) {
                                ((($(obj).parents("td")).siblings()).eq(4)).html("2.7");
                            }
                            else if (grade_point > 79 && grade_point <= 82) {
                                ((($(obj).parents("td")).siblings()).eq(4)).html("3.0");
                            }
                            else if (grade_point > 82 && grade_point <= 85) {
                                ((($(obj).parents("td")).siblings()).eq(4)).html("3.3");
                            }
                            else if (grade_point > 85 && grade_point <= 89) {
                                ((($(obj).parents("td")).siblings()).eq(4)).html("3.7");
                            }
                            else if (grade_point > 89 && grade_point <= 100) {
                                ((($(obj).parents("td")).siblings()).eq(4)).html("4.0");
                            }

                            toastr.success("修改成绩成功");
                        }else {
                            //审核失败： 1关闭对话框 2 提示用户审核失败
                            toastr.warning("服务器异常，修改成绩失败");
                        }
                        $('#update').modal('hide');
                    }
                })
            })
        })

        function modify(){
            $('#update').modal('show')
            $('#grade').val(grade);
           /* $.ajax({
                url:"del",//请求的url地址
                type:"post",//请求方式
                candidateType:"json",//json传输格式
                async:true,//是否异步传输
                data:"grade="+grade,//传入的参数
                success:function (data){ //接受服务端响应的数据
                    if (data == 1) {
                        $('#grade').val(grade);

                    }else {
                        //审核失败： 1关闭对话框 2 提示用户审核失败
                        toastr.warning("服务器异常，审核失败");
                    }

                }
            })*/
        }

        function showd(sno_, obj_, cno_) {
            sno = sno_;
            obj = obj_;
            cno = cno_;
            $('#myModal').modal('show');
        }

        function show2(sno_, obj_, cno_, grade_) {
            sno = sno_;
            obj = obj_;
            cno = cno_;
            grade = grade_;
            modify();
        }
    </script>
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
                <th>绩点</th>
                <th>操作</th>
            </tr>

            <c:forEach items="${scoreList}" var="score" varStatus="status">
                <tr class="success">
                    <td>${status.index }</td>
                    <td>${score.sno }</td>
                    <td>${score.cno }</td>
                    <td>${score.grade }</td>
                    <td>
                        <c:if test="${score.grade < 60}">
                            0
                        </c:if>
                        <c:if test="${score.grade <= 62 && score.grade >= 60}">
                            1.0
                        </c:if>
                        <c:if test="${score.grade <= 65 && score.grade > 62}">
                            1.3
                        </c:if>
                        <c:if test="${score.grade <= 69 && score.grade > 65}">
                            1.7
                        </c:if>
                        <c:if test="${score.grade <= 72 && score.grade > 69}">
                            2.0
                        </c:if>
                        <c:if test="${score.grade <= 75 && score.grade > 72}">
                            2.3
                        </c:if>
                        <c:if test="${score.grade <= 79 && score.grade > 75}">
                            2.7
                        </c:if>
                        <c:if test="${score.grade <= 82 && score.grade > 79}">
                            3.0
                        </c:if>
                        <c:if test="${score.grade <= 85 && score.grade > 82}">
                            3.3
                        </c:if>
                        <c:if test="${score.grade <= 89 && score.grade > 85}">
                            3.7
                        </c:if>
                        <c:if test="${score.grade <= 100 && score.grade > 89}">
                            4.0
                        </c:if>
                    </td>
                    <td>
                        <button class="btn btn-info btn-xs" onclick="show2('${score.sno}', this, '${score.cno}', '${score.grade}')">修改</button>
                        <button class="btn btn-primary btn-xs" onclick="showd('${score.sno}', this,'${score.cno}')">删除</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">请输入新的成绩</h4>
                </div>
                <div class="modal-body">
                    <label for="grade" class="col-sm-2 control-label">成绩</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="grade" name="grade" >
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" id="fine">通过</button></div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">温馨提示</h4>
                </div>
                <div class="modal-body">
                    是否确认删除
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" id="ok">通过</button></div>
            </div>
        </div>
    </div>
</body>
</html>
