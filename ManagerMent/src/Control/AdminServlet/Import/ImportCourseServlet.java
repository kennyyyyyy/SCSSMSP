package Control.AdminServlet.Import;

import Bean.Course;
import Service.IAdminService;
import Service.impl.IAdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ImportCourseServlet extends HttpServlet {

    IAdminService iAdminService = new IAdminServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String cno = req.getParameter("cno");
        String cname = req.getParameter("cname");
        String cntp = req.getParameter("course_nature");
        String creditstp = req.getParameter("credits");

        int cn = Integer.parseInt(cntp);
        double credits = Double.parseDouble(creditstp);

        System.out.println(cno + " " + cname + " " + cn + " " + credits);

        Course course = new Course(cno, cname, cn, credits);

        boolean success = iAdminService.addCourse(course);

        if(success){
            //跳转到课程信息首页
            req.getRequestDispatcher("webadmin/adminCourse.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("webadmin/adminCourseAdd.jsp").forward(req, resp);
        }
    }
}
