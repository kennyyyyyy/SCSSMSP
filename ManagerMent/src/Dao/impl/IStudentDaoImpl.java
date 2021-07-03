package Dao.impl;

import Bean.Student;
import Dao.IStudentDao;
import util.DBConUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class IStudentDaoImpl implements IStudentDao {
    @Override
    public Student login(Student student) {
        PreparedStatement pstmt = null;
        Connection conn = null;
        ResultSet rs = null;
        Student stp = null;

        try{
            conn = DBConUtil.getConn();

            String sql = "select sname from student where sno=? and password=?";

            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, student.getSno());
            pstmt.setString(2, student.getPassword());

            rs = pstmt.executeQuery();

            if(rs.next()){
                stp = new Student();
                String sname = rs.getString("sname");

                stp.setSname(sname);
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBConUtil.close(rs, pstmt, null);
        }
        return stp;
    }
}
