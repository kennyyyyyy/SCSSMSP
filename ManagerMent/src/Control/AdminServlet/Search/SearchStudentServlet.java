package Control.AdminServlet.Search;

import Bean.Course;
import Bean.Page;
import Bean.Student;
import Service.IAdminService;
import Service.impl.IAdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class SearchStudentServlet extends HttpServlet {

    IAdminService iAdminService = new IAdminServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int pageNum = Integer.parseInt(req.getParameter("pageNum"));
        String info = req.getParameter("inputInfo");



        Student student = new Student(info);

        int pageSize = 10;

        Page page = iAdminService.searchAllStudnetWithPage(pageNum, pageSize, student);

        req.setAttribute("inputInfo", info);
        req.setAttribute("pageBean", page);
        req.setAttribute("studentList", page.getList());
        req.getRequestDispatcher("webadmin/adminAudit.jsp").forward(req,resp);
    }
}
