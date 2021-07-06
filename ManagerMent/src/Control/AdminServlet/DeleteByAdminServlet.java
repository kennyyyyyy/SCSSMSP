package Control.AdminServlet;

import Service.IAdminService;
import Service.impl.IAdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class DeleteByAdminServlet extends HttpServlet {
    private IAdminService iAdminService = new IAdminServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        /*
         * ① 获取删除的id
         * ② 把id交给service让他把id删除掉
         * ③ 客户提示
         */
        String sno = request.getParameter("sno");
        String cno = request.getParameter("cno");
        boolean result = iAdminService.delGradeByAdmin(sno, cno);
        if(result) {
            request.setAttribute("info", "删除成功!");
        }else {
            request.setAttribute("info", "系统错误，删除失败!");
        }
        request.getRequestDispatcher("adminGrade").forward(request, response);

    }
}

