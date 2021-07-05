package Control.AdminServlet.Search;

import Bean.Score;
import Service.IAdminService;
import Service.impl.IAdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class SearchScoreServlet extends HttpServlet {

    IAdminService iAdminService = new IAdminServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String searchSno = req.getParameter("searchScoreSno");
        String searchCno = req.getParameter("searchScoreCno");

        req.setAttribute("searchScoreSno", searchSno);
        req.setAttribute("searchScoreCno", searchCno);

        Score score = new Score(searchSno, searchCno);

        List<Score> scoreList = iAdminService.searchScore(score);

        req.setAttribute("scoreList", scoreList);

        req.getRequestDispatcher("webadmin/adminGrade.jsp").forward(req, resp);

    }
}
