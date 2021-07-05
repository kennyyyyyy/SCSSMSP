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
    <style>
        a {
            text-decoration: none;
        }
    </style>
    <script>
        toastr.options = {"timeOut":1000};
        var sno = 0;
        var obj = null;
        var sex = 0;
        var sname = 0;
        var admission_data = 0;
        var graduation_data = 0;
        var major = 0;
        //jquery ready函数
        $(function (){
            $('#ok').click(function (){

                $.ajax({
                    url:"status",//请求的url地址
                    type:"post",//请求方式
                    candidateType:"json",//json传输格式
                    async:true,//是否异步传输
                    data:"sno="+sno,//传入的参数
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

       // $(function (){
         //   $('#modify').click(function (){
          function modify(){
              $('#update').modal('show');
                $.ajax({
                    url:"status",//请求的url地址
                    type:"post",//请求方式
                    candidateType:"json",//json传输格式
                    async:true,//是否异步传输
                    data:"sno="+sno+"&sex="+sex+"&sname="+sname+"&admission_data="+admission_data+"&graduation_data="+graduation_data+"&major="+major,//传入的参数
                    success:function (data){ //接受服务端响应的数据
                        if (data == 1) {
                           $('#sex').val(sex);
                           $('#sname').val(sname);
                           $('#admission_data').val(admission_data);
                           $('#graduation_data').val(graduation_data);
                           $('#major').val(major);

                        }else {
                            //审核失败： 1关闭对话框 2 提示用户审核失败
                            toastr.warning("服务器异常，审核失败");
                        }

                    }
                })
          }
           // })
      //  })

        $(function (){
            $('#fine').click(function (){
                sex = $('#sex').val();
                sname = $('#sname').val();
                admission_data = $('#admission_data').val();
                graduation_data = $('#graduation_data').val();
                major = $('#major').val();
                $.ajax({
                    url:"update",//请求的url地址
                    type:"post",//请求方式
                    candidateType:"json",//json传输格式
                    async:true,//是否异步传输
                    data:"sno="+sno+"&sex="+sex+"&sname="+sname+"&admission_data="+admission_data+"&graduation_data="+graduation_data+"&major="+major,//传入的参数
                    success:function (data){ //接受服务端响应的数据
                        if (data == 1) {
                            //审核成功：1把当前的对话框关闭 2 把审核按钮变成审核文字
                            ((($(obj).parents("td")).siblings()).eq(1)).html(sex==1?"男":"女");
                            ((($(obj).parents("td")).siblings()).eq(2)).html(sname);
                            ((($(obj).parents("td")).siblings()).eq(3)).html(admission_data);
                            ((($(obj).parents("td")).siblings()).eq(4)).html(graduation_data);
                            ((($(obj).parents("td")).siblings()).eq(5)).html(major);
                            toastr.success("修改成功");
                        }else {
                            //审核失败： 1关闭对话框 2 提示用户审核失败
                            toastr.warning("服务器异常，审核失败");
                        }
                        $('#update').modal('hide');
                    }
                })
            })
        })

        function showd(sno_, obj_) {
            sno = sno_;
            obj = obj_;
            $('#myModal').modal('show');
        }
        function show2(sno_, obj_, sex_, sname_, admission_data_, graduation_data_, major_) {
            sno = sno_;
            obj = obj_;
            sex = sex_;
            sname = sname_;
            admission_data = admission_data_;
            graduation_data = graduation_data_;
            major = major_;
            modify();
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
        <a class="btn btn-default active" href="${pageContext.request.contextPath}/webadmin/adminAdd.jsp" role="button">导入学生信息</a>
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
            <td>${student.sex==1?"男":"女"}</td>
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
                        <button  class="btn btn-info btn-xs" onclick="show2('${student.sno}', this, '${student.sex}','${student.sname}','${student.admission_data}','${student.graduation_data}','${student.major}')">修改</button>
                    </span>
                    <span>
                        <button class="btn btn-info btn-xs" >
                       <a href="reset?sno=${student.sno }"  onclick="if(confirm('是否重置密码?')){ alert('重置密码成功');return true;}else{ alert('重置密码失败');return false;}">重置密码</a>
                        </button>
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

                  <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#update">
                      修改数据
                  </button>

                  <!-- Modal -->
  <div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title" id="warning">请输入要修改的数据(男生请在性别栏输入1，女生请在性别栏输入0)</h4>
              </div>
              <%--  <div class="modal-body">
                    是否审核通过
                </div>--%>
              <div>
                  <label for="sex" class="col-sm-2 control-label">性别</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="sex" name="sex" >
                  </div>
              </div>
              <div>
                  <label for="sex" class="col-sm-2 control-label">姓名</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="sname" name="sanme" >
                  </div>
              </div>
              <div>
                  <label for="admission_data" class="col-sm-2 control-label">入学时间</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="admission_data" name="admission_data" >
                  </div>
              </div>
              <div>
                  <label for="graduation_data" class="col-sm-2 control-label">毕业时间</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="graduation_data" name="graduation_data" >
                  </div>
              </div>
              <div>
                  <label for="major" class="col-sm-2 control-label">专业</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="major" name="major" >
                  </div>
              </div>
              <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                  <button type="button" class="btn btn-primary" id="fine">通过</button>
              </div>

          </div>
      </div>
  </div>

</body>
</html>
