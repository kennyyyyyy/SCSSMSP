<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Imperio
  Date: 2021/6/30
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>首页</title>
    <base target="rightFrame">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="bootstrap-3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/left.css">
    <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="bootstrap-3.4.1/js/bootstrap.min.js"></script>
    <!--jquery提示筐插件-->
    <link rel="stylesheet" href="../toastr/toastr.css">
    <script type="text/javascript" src="../toastr/toastr.js"></script>
    <script>
        toastr.options = {"timeOut":1000};
        var sno = 0;
        var obj = null;
        var temp = 0;
        function modifypwd( sno_,  obj_ , password_) {
             sno = sno_;
             obj = obj_;
             password = password_;
             if (password =="123456") {
               $('#myModal').modal({backdrop: 'static', keyboard: false});
            }

        }
        $(function (){
            $('#ok').click(function (){
                password = $('#password').val();
                $.ajax({
                    url:"modify",//请求的url地址
                    type:"post",//请求方式
                    candidateType:"json",//json传输格式
                    async:true,//是否异步传输
                    data:"sno="+sno+"&password="+password,//传入的参数
                    success:function (data){ //接受服务端响应的数据
                        if (data == 1) {
                            //审核成功：1把当前的对话框关闭 2 把审核按钮变成审核文字
                            toastr.success("修改新密码成功");
                        }else {
                            //审核失败： 1关闭对话框 2 提示用户审核失败
                            toastr.warning("服务器异常,修改密码失败");
                        }
                        $('#myModal').modal('hide');
                        alert(password);
                    }
                })
            })
        })

    </script>

</head>
<body onload="modifypwd('${student.sno}', this, '${student.password}')">
  <div class="container-fluid" style="height: 100%">

      <%--  头部--%>
      <jsp:include page="head.jsp"></jsp:include>

      <div class="row">

          <div class="col-xs-2 col-md-2" style="margin-top: 54px;" id="left">
          <jsp:include page="webstudent/studentLeft.jsp"></jsp:include>
          </div>
          <div class="col-xs-8 col-md-10" style="margin-top: 54px;">
              <iframe src="webstudent/studentSchool.jsp" frameborder="0" frameBorder="0" marginwidth="0px" width="100%" height="100%" name="rightFrame" id="rightFrame" style="margin-top: 30px"></iframe>
          </div>
      </div>
  </div>

  <c:if test="${student.password =='123456' }">
      <div onload="modifypwd()">45646</div>
  </c:if>

  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
          <div class="modal-content">
              <div class="modal-header">
                  <%--                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
                  <h4 class="modal-title" id="myModalLabel">您还未修改密码，请修改默认密码</h4>
              </div>


                  <div >
                      <label for="password" class="col-sm-4 control-label">请输入新的密码</label>

                          <input type="text" class="form-control" id="password" name="password" >

                  </div>
                  <div style="margin-top: 10px;">
                      <label for="password1" class="col-sm-4 control-label">请确认新的密码</label>

                          <input type="text" class="form-control" id="password1" name="password1" >
                  </div>


              <div class="modal-footer">
                  <%--                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>--%>
                  <button type="button" class="btn btn-primary" id="ok">通过</button>
              </div>
          </div>
      </div>
  </div>



</body>
</html>
