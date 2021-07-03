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
        req.setCharacterEncoding("UTF-8");

        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        int flag = Integer.parseInt(req.getParameter("LoginType"));

        if(flag == 1){ //学生

            Student student = iStudentService.login(new Student(userName, password));

            if(student == null){
                req.setAttribute("info","用户名或密码错误");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }else{
                req.getSession().setAttribute("student", student);

//                转到学生登录首页
                resp.sendRedirect("StudentIndex.jsp");
            }

        }else{  //管理员
            Admin admin = iAdminService.login(new Admin(userName, password));

            if(admin == null){
                req.setAttribute("info","用户名或密码错误");

                req.getRequestDispatcher("index.jsp").forward(req, resp);

            }else{
                req.getSession().setAttribute("admin", admin);

//                转到管理员登录首页
                resp.sendRedirect("AdminIndex.jsp");

            }


        }
    }
}
