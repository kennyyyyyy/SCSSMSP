package Control;

import Bean.GraduationStudent;
import Bean.Student;
import Service.IAdminService;
import Service.IStudentService;
import Service.impl.IAdminServiceImpl;
import Service.impl.IStudentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GraduationServlet extends HttpServlet {
    private IStudentService studentService = new IStudentServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        /*
         * ① 问services要所有的用户列表
         * ② 把用户列表List<Lover>传输到用户管理首页
         */
        List<GraduationStudent> list1 = studentService.getGraduationList();
        request.setAttribute("list1", list1);
        request.getRequestDispatcher("webstudent/studentGraduation.jsp").forward(request, response);
    }

}
