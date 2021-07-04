package Dao.impl;

import Bean.Admin;
import Bean.Student;
import Dao.IAdminDao;
import util.DBConUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class IAdminDaoImpl implements IAdminDao {

    @Override
    public Admin login(Admin admin) {
        PreparedStatement pstmt = null;
        Connection conn = null;
        ResultSet rs = null;
        Admin atp = null;

        try{
            conn = DBConUtil.getConn();

            String sql = "select ano from admin where ano=? and password=?";

            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, admin.getAno());
            pstmt.setString(2, admin.getPassword());

            rs = pstmt.executeQuery();

            if(rs.next()){
                atp = new Admin();
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBConUtil.close(rs, pstmt, null);
        }
        return atp;
    }

    @Override
    public int addStudent(Student student) {
        PreparedStatement pstmt = null;
        Connection conn = null;
        Admin atp = null;

        int i = 0;

        try{
            conn = DBConUtil.getConn();

            String sql = "insert into student(sno, sex, sname, admission_data, graduation_flag,  major, id_card) " +
                    "  values(?,?,?,?,?,?,?)";

            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, student.getSno());
            pstmt.setInt(2, student.getSex());
            pstmt.setString(3, student.getSname());
            pstmt.setString(4, student.getAdmission_data());
            pstmt.setInt(5, 0);
            pstmt.setString(6, student.getMajor());
            pstmt.setString(7, student.getId_card());

            i = pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBConUtil.close(null, pstmt, null);
        }
        return i;
    }

    /*
    存在为false
    不存在为true
     */
    public boolean checkSno(String sno){
        PreparedStatement pstmt = null;
        Connection conn = null;
        ResultSet rs = null;

        String sql = "select sno from student where sno=?";
        boolean exits = true;

        try{
            conn = DBConUtil.getConn();

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, sno);

            rs = pstmt.executeQuery();

            if(rs.next()){
                System.out.println(rs.getString("sno"));
                exits = false;
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBConUtil.close( rs, pstmt,null);
        }
        return exits;
    }
}
