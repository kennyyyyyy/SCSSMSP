package Control.AdminServlet.Search;

import Bean.Course;
import Service.IAdminService;
import Service.impl.IAdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class SearchCourseServlet extends HttpServlet {
    IAdminService iAdminService = new IAdminServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String info = req.getParameter("inputInfo");
        String course_nature = req.getParameter("inputCN");


        int cn = Integer.parseInt(course_nature);

        System.out.println(cn);

        req.setAttribute("inputInfo", info);

        Course course = new Course(info, cn);

        List<Course> courseList = iAdminService.searchCourse(course);

        req.setAttribute("courseList", courseList);
        req.getRequestDispatcher("webadmin/adminCourse.jsp").forward(req, resp);
    }
}
