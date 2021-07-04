package Control.AdminServlet;

import Bean.Score;
import Dao.IAdminDao;
import Dao.impl.IAdminDaoImpl;
import Service.IAdminService;
import Service.impl.IAdminServiceImpl;
import jdk.nashorn.internal.runtime.Scope;
import org.omg.CORBA.INTERNAL;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddScoreServlet extends HttpServlet {

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

        int grade = Integer.parseInt(gradetp);

        Score score = new Score(sno, cno, grade);

        boolean success = iAdminService.addScore(score);

        if(success){
            req.getRequestDispatcher("webadmin/adminGrade.jsp").forward(req,resp);
        }else{
            req.getRequestDispatcher("webadmin/adminGradeAdd.jsp").forward(req,resp);
        }
    }
}
