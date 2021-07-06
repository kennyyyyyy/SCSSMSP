package Control.AdminServlet;

import Bean.Student;
import Service.IAdminService;
import Service.impl.IAdminServiceImpl;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class AdminAuditServlet extends HttpServlet {

    private IAdminService adminService = new IAdminServiceImpl();

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
        Student student = new Student();

        List<Student> studentList = adminService.searchStudent(student);
        request.setAttribute("studentList", studentList);
        request.getRequestDispatcher("webadmin/adminAudit.jsp").forward(request, response);
    }

}
