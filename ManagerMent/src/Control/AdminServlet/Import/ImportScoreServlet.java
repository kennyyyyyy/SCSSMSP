package Control.AdminServlet.Import;

import Bean.Score;
import Service.IAdminService;
import Service.impl.IAdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ImportScoreServlet extends HttpServlet {

    IAdminService iAdminService = new IAdminServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String sno = req.getParameter("sno");
        String cno = req.getParameter("cno");
        String gradetp = req.getParameter("grade");

        double grade = Double.parseDouble(gradetp);

        Score score = new Score(sno, cno, grade);

        boolean success = iAdminService.addScore(score);

        if(success){
            req.getRequestDispatcher("adminGrade").forward(req,resp);
        }else{
            req.getRequestDispatcher("webadmin/adminGradeAdd.jsp").forward(req,resp);
        }
    }
}
