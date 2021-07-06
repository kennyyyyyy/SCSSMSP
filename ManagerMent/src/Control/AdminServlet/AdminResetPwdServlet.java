package Control.AdminServlet;

import Service.IAdminService;
import Service.impl.IAdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AdminResetPwdServlet extends HttpServlet {
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
        boolean result = iAdminService.resetPwdByAdmin(sno);
        if(result) {
            request.setAttribute("info", "重置密码成功!");
        }else {
            request.setAttribute("info", "系统错误，重置密码失败!");
        }
        request.getRequestDispatcher("searchStudentPage?pageNum=1&inputInfo=").forward(request, response);
    }
}
