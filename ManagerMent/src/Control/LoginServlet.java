package Control;

import Bean.Admin;
import Bean.Student;
import Service.IAdminService;
import Service.IStudentService;
import Service.impl.IAdminServiceImpl;
import Service.impl.IStudentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class LoginServlet extends HttpServlet {

    private IStudentService iStudentService = new IStudentServiceImpl();
    private IAdminService iAdminService = new IAdminServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");                      //设置字符的编码格式
        String userName = req.getParameter("userName");     //获得前端页面的用户名、密码和登录类型
        String password = req.getParameter("password");
        int flag = Integer.parseInt(req.getParameter("LoginType"));
        if(flag == 1){ //学生
            //通过用户名和密码新建一个Student对象，用来传输账号密码信息到Dao层，再接收返回的值
            Student student = iStudentService.login(new Student(userName, password));
            //判断学生对象是否存在，然后传递相关信息到导航栏和学生的首页
            if(student == null){
                req.setAttribute("info","用户名或密码错误");
                req.getRequestDispatcher("login.jsp").forward(req, resp);
            }else{
                req.getSession().setAttribute("student", student);
                req.getSession().setAttribute("admin", null);
//                转到学生登录首页
                resp.sendRedirect("StudentIndex.jsp");
            }
        }else{  //管理员， 原理同学生
            Admin admin = iAdminService.login(new Admin(userName, password));
            if(admin == null){
                req.setAttribute("info","用户名或密码错误");
                req.getRequestDispatcher("login.jsp").forward(req, resp);
            }else{
                req.getSession().setAttribute("admin", admin);
                req.getSession().setAttribute("student", null);
//                转到管理员登录首页
                resp.sendRedirect("AdminIndex.jsp");
            }
        }
    }
}
