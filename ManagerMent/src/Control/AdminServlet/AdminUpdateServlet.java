package Control.AdminServlet;

import Service.IAdminService;
import Service.impl.IAdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class AdminUpdateServlet extends HttpServlet {
    private IAdminService adminService = new IAdminServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
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
        String sex = request.getParameter("sex");
        String sname = request.getParameter("sname");
        String admission_data = request.getParameter("admission_data");
        String graduation_data = request.getParameter("graduation_data");
        String major = request.getParameter("major");
        int sex_ = Integer.parseInt(sex);
        boolean result = adminService.updateAllByAdmin(sno, sex_, sname, admission_data, graduation_data, major);
        //通过流的方式把结果响应到前端
        PrintWriter writer = response.getWriter();
        writer.print(result?1:0);
    }
}


