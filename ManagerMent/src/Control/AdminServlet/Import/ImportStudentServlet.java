package Control.AdminServlet.Import;

import Bean.Student;
import Service.IAdminService;
import Service.impl.IAdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ImportStudentServlet extends HttpServlet {

    private IAdminService iAdminService = new IAdminServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");


        String sno = req.getParameter("sno");
        String sname = req.getParameter("name");
        String sextp = req.getParameter("sex");
        String admission_data = req.getParameter("admission_data");
        String major = req.getParameter("major");
        String id_card = req.getParameter("id_card");

        int sex = Integer.parseInt(sextp);

        Student student = new Student(sno, sname, sex, admission_data, major, id_card);

        boolean result = iAdminService.addStudent(student);

        if(result){
            //跳转到学籍管理首页
            req.getRequestDispatcher("webadmin/adminAudit.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("webadmin/adminAdd.jsp").forward(req, resp);
        }
    }
}
