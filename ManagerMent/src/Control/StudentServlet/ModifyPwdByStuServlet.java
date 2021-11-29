package Control.StudentServlet;

import Service.IAdminService;
import Service.IStudentService;
import Service.impl.IAdminServiceImpl;
import Service.impl.IStudentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ModifyPwdByStuServlet extends HttpServlet {
    private IStudentService studentService = new IStudentServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        response.setContentType("text/html;charset=utf-8");

        PrintWriter writer = response.getWriter();
        /*
         * 1 获取修改的用户
         * 2 修改status=1
         * 3 把修改的结果响应给客户(不刷新页面)
         */
        String sno = request.getParameter("sno");
        String password = request.getParameter("password");
        String password1 = request.getParameter("password1");

        String info = null;

        boolean result = false;

        System.out.println(password);
        System.out.println(password1);
        if (password == null || password == "" || password1 == null || password1 == ""){
            info = "密码不能为空";
        }else if(!password1.equals(password)){
            info = "两次密码不一致，请重新输入";
        }else if(password == "123456"){
            info = "请勿修改为默认密码";
        }else if(password.length() <= 6){
            info = "密码的长度不能小于等与6位";
        }else{
            result = studentService.modifyPassword(sno, password);
        }

        //通过流的方式把结果响应到前端

        writer.print(result?1:0 + "," + info);

    }
}

