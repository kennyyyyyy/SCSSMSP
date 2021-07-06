package Dao.impl;

import Bean.GraduationStudent;
import Bean.Student;
import Dao.IStudentDao;
import util.DBConUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class IStudentDaoImpl implements IStudentDao {
    @Override
    public Student login(Student student) {
        PreparedStatement pstmt = null;
        Connection conn = null;
        ResultSet rs = null;
        Student stp = null;

        try{
            conn = DBConUtil.getConn();
            String sql = "select sname,photo,sex,national,birth,place,id_card,email,postal_code,sno,graduation_flag from student where sno=? and password=?";
            //  String sql = "select sname from student where sno=? and password = ?";
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, student.getSno());
            pstmt.setString(2, student.getPassword());

            rs = pstmt.executeQuery();
            if(rs.next()){
                stp = new Student();
                String sname = rs.getString("sname");
                String photo = rs.getString("photo");
                int sex = rs.getInt("sex");
                String national = rs.getString("national");
                String birth = rs.getString("birth");
                String place = rs.getString("place");
                String id_card = rs.getString("id_card");
                String email = rs.getString("email");
                String postal_code = rs.getString("postal_code");
                String sno = rs.getString("sno");
                int graduation_flag = rs.getInt("graduation_flag");

                stp.setSname(sname);
                stp.setNational(national);
                stp.setBirth(birth);
                stp.setPlace(place);
                stp.setId_card(id_card);
                stp.setEmail(email);
                stp.setPhoto(photo);
                stp.setSex(sex);
                stp.setPostal_code(postal_code);
                stp.setSno(sno);
                stp.setGraduation_flag(graduation_flag);


            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBConUtil.close(rs, pstmt, null);
        }
        return stp;
    }

    @Override
    public List<GraduationStudent> getGraduationList() {
        System.out.println("3");
        Connection conn = DBConUtil.getConn();
        ResultSet rs = null;
        PreparedStatement pstmt = null;
        String sql = "SELECT sno,graduation_type,graduation_conclusion,graduation_data,graduation_id,graduation_class FROM graduation_situation ";
        List<GraduationStudent> list = null;
        System.out.println("1");
        try {
            System.out.println("2");
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            list = new ArrayList<GraduationStudent>();
            while (rs.next()) {
                GraduationStudent temp = new GraduationStudent(rs.getString("sno"),rs.getString("graduation_type"), rs.getString("graduation_conclusion"),
                        rs.getString("graduation_data"),rs.getString("graduation_id"),rs.getString("graduation_class"));
                list.add(temp);
                System.out.println(rs.getString("sno"));
            }


        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBConUtil.close(rs,pstmt,null);
        }
        return list;
    }


}
