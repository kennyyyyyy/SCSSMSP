package Control.AdminServlet;

import Bean.Student;
import Service.IAdminService;
import Service.impl.IAdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class searchStudentBySnoServlet extends HttpServlet {

    IAdminService iAdminService = new IAdminServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");

        String sno = req.getParameter("sno");
        Student student = new Student();
        student.setSno(sno);

        student = iAdminService.searchStudent(student).get(0);

        String data = new String(student.getPlace() + "," + student.getBirth() + "," + student.getNational() +
                "," + student.getEmail() + "," + student.getPostal_code() + "," + student.getPhoto());

        System.out.println(student.getSno() + ":" + student.getPlace() + "," + student.getBirth() + "," + student.getNational() +
                "," + student.getEmail() + "," + student.getPostal_code() + "," + student.getPhoto());

        resp.getWriter().print(data);

    }
}
