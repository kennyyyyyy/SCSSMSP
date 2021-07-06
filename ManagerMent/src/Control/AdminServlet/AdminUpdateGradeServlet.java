package Control.AdminServlet;

import Service.IAdminService;
import Service.impl.IAdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class AdminUpdateGradeServlet extends HttpServlet {
    private IAdminService adminService = new IAdminServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        /*
         * 1 获取修改的用户
         * 2 修改status=1
         * 3 把修改的结果响应给客户(不刷新页面)
         */
        String sno = request.getParameter("sno");
        String cno = request.getParameter("cno");
        String grade = request.getParameter("grade");
        double grade_ = Double.parseDouble(grade);
        boolean result = adminService.updateGradeByAdmin(sno, cno, grade_);
        //通过流的方式把结果响应到前端
        PrintWriter writer = response.getWriter();
        writer.print(result ? 1 : 0);
    }
}
