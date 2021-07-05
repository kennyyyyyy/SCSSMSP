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
  <title>Title</title>
  <base target="rightFrame">
  <meta charset="UTF-8">
  <link rel="stylesheet" href="../bootstrap-3.4.1/css/bootstrap.min.css">
  <script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="../bootstrap-3.4.1/js/bootstrap.min.js"></script>
    <!--jquery提示筐插件-->
    <link rel="stylesheet" href="../toastr/toastr.css">
    <script type="text/javascript" src="../toastr/toastr.js"></script>
    <script>
        toastr.options = {"timeOut":1000};
        var eml = 0;
        var obj = null;
        //jquery ready函数
        $(function (){
            $('#ok').click(function (){

                $.ajax({
                    url:"status",//请求的url地址
                    type:"post",//请求方式
                    candidateType:"json",//json传输格式
                    async:true,//是否异步传输
                    data:"eml="+eml,//传入的参数
                    success:function (data){ //接受服务端响应的数据
                        if (data == 1) {
                            //审核成功：1把当前的对话框关闭 2 把审核按钮变成审核文字
                            $(obj).parent().html("  <span style='color: red;'>已审核&nbsp;</span>");
                            toastr.success("审核成功");
                        }else {
                            //审核失败： 1关闭对话框 2 提示用户审核失败
                            toastr.warning("服务器异常，审核失败");
                        }
                        $('#myModal').modal('hide');
                    }
                })
            })
        })

        function showd(eml_, obj_) {
            eml = eml_;
            obj = obj_;
            $('#myModal').modal('show');
        }
    </script>
  <style>
    td{
      text-align: center;
    }
  </style>

</head>
<body>



  <div class="container" style="text-align: center;width: 1000px">
    <div>
      <div style="float: right">
        <%--   显示未审核学生信息   --%>
        <a class="btn btn-default active" href="adminAudit.jsp" role="button">审核学生信息</a>
        <a class="btn btn-default active" href="adminAdd.jsp" role="button">导入学生信息</a>
      </div>
    </div>
        <table class="table table-bordered" style=" overflow-x: hidden" >
          <tr class="success">
            <th width="125px" style="text-align: center">学号</th>
            <th width="50px" style="text-align: center">性别</th>
            <th width="80px" style="text-align: center">姓名</th>
            <th width="100px" style="text-align: center">入学时间</th>
            <th width="100px" style="text-align: center">毕业时间</th>
            <th  style="text-align: center">专业</th>
            <th  style="text-align: center">操作</th>

          </tr>
<c:forEach items="${list }" var="student">
          <tr class="success">
            <td>${student.sno}</td>
            <td>${student.sex}</td>
            <td>${student.sname}</td>
            <td>${student.admission_data}</td>
            <td>${student.graduation_data}</td>
            <td>${student.major}</td>

            <td>
              <c:if test="${student.status==1}">
                <span style="color: red;">已审核&nbsp;</span>
              </c:if>
              <c:if test="${student.status==0}">
                    <span>
                        <button class="btn btn-info btn-xs" onclick="showd('${student.sno}', this)">审核</button>
                    </span>
                &nbsp;&nbsp;
              </c:if>
              <span>
                        <button class="btn btn-info btn-xs" onclick="show2('${studnt.sno}', this)">修改</button>
                    </span>

            </td>
          </tr>
</c:forEach>
        </table>
      </div>

    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
    Launch demo modal
    </button>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
    <div class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <h4 class="modal-title" id="myModalLabel">温馨提示</h4>
    </div>
    <div class="modal-body">
    是否审核通过
    </div>

    <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
    <button type="button" class="btn btn-primary" id="ok">通过</button>
    </div>
    </div>
    </div>
    </div>
</body>
</html>
