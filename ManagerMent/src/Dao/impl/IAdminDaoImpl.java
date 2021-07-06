package Dao.impl;

import Bean.*;
import Dao.IAdminDao;
import util.DBConUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

    @Override
    public int addScore(Score score) {
        PreparedStatement pstmt = null;
        Connection conn = null;

        int  success = 0;

        try{
            conn = DBConUtil.getConn();

            String sql = "insert into score(sno, cno, grade) " +
                    "  values(?,?,?)";

            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, score.getSno());
            pstmt.setString(2, score.getCno());
            pstmt.setDouble(3, score.getGrade());

            success = pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBConUtil.close(null, pstmt, null);
        }
        return success;

    }

    @Override
    public int addCourse(Course course) {
        PreparedStatement pstmt = null;
        Connection conn = null;

        int  success = 0;

        try{
            conn = DBConUtil.getConn();

            String sql = "insert into course(cno, cname, course_nature, credits) " +
                    "  values(?,?,?,?)";

            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, course.getCno());
            pstmt.setString(2, course.getCname());
            pstmt.setDouble(3, course.getCourseNature());
            pstmt.setDouble(4, course.getCredits());

            success = pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBConUtil.close(null, pstmt, null);
        }
        return success;
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

    /*
    存在为false
    不存在为true
     */
    public boolean checkCno(String cno){
        PreparedStatement pstmt = null;
        Connection conn = null;
        ResultSet rs = null;

        String sql = "select cno from course where cno=?";

        boolean exits = true;

        try{
            conn = DBConUtil.getConn();

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, cno);

            rs = pstmt.executeQuery();

            if(rs.next()){
                exits = false;
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBConUtil.close( rs, pstmt,null);
        }
        return exits;
    }

    @Override
    public boolean checkGrade(double grade) {
       return (grade>=0 && grade <=100);
    }

    @Override
    public int updateStatusByAdmin(String sno) {
        Connection conn = DBConUtil.getConn();
        PreparedStatement pstmt = null;
        String sql = "update student set status = 1 where sno = ? ";
        int i = 0;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,sno);
            i = pstmt.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBConUtil.close(null, pstmt, null);
        }
        return i;
    }

    @Override
    public List<Student> getStudentListByAdmin() {
        Connection conn = DBConUtil.getConn();
        ResultSet rs = null;
        PreparedStatement pstmt = null;
        String sql = "SELECT sno,sex,sname,admission_data,graduation_data,major,status FROM student ";
        List<Student> list = null;
        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            list = new ArrayList<Student>();
            while (rs.next()) {
                Student temp = new Student(rs.getString("sno"),rs.getInt("sex"), rs.getString("sname"),
                                           rs.getString("admission_data"),rs.getString("graduation_data"),rs.getString("major") ,
                        rs.getInt("status"));
                list.add(temp);
            }


        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBConUtil.close(rs,pstmt,null);
        }
        return list;
    }

    @Override
    public List<Score> searchScore(Score score) {
        PreparedStatement pstmt = null;
        Connection conn = null;
        ResultSet rs = null;
        List<Score> scoreList = new ArrayList<>();

        try{
            conn = DBConUtil.getConn();

            String sql = "select sno,cno,grade from score where sno like '%' ? '%' and cno like '%' ? '%'";

            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, score.getSno());
            pstmt.setString(2, score.getCno());

            rs = pstmt.executeQuery();

            while(rs.next()){
                Score scoretp = new Score();
                scoretp.setSno(rs.getString("sno"));
                scoretp.setCno(rs.getString("cno"));
                scoretp.setGrade(rs.getDouble("grade"));
                scoreList.add(scoretp);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBConUtil.close(rs, pstmt, null);
        }
        return scoreList;
    }

    @Override
    public List<Course> searchCourse(Course course) {
        PreparedStatement pstmt = null;
        Connection conn = null;
        ResultSet rs = null;
        List<Course> courseList = new ArrayList<>();

        try{
            conn = DBConUtil.getConn();

            String sql = "select cno, cname, course_nature, credits from course where (cno like ? or cname like ? or credits like ?) and course_nature like ?";

            pstmt = conn.prepareStatement(sql);

            String info  = course.getSearchInfo();
            info = info.trim();
            info = "%" + info + "%";

            int cn = course.getCourseNature();

            pstmt.setString(1, info);
            pstmt.setString(2, info);
            pstmt.setString(3, info);
            if(cn == 3){
                pstmt.setString(4, "%%");
            }else{
                pstmt.setString(4, Integer.toString(cn));
            }

            rs = pstmt.executeQuery();

            while(rs.next()){
                Course coursetp = new Course();
                coursetp.setCno(rs.getString("cno"));
                coursetp.setCname(rs.getString("cname"));
                coursetp.setCourseNature(rs.getInt("course_nature"));
                coursetp.setCredits(rs.getDouble("credits"));
                courseList.add(coursetp);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBConUtil.close(rs, pstmt, null);
        }
        return courseList;
    }

    @Override
    public List<Student> searchStudent(Student student) {
        PreparedStatement pstmt = null;
        Connection conn = null;
        ResultSet rs = null;
        List<Student> studentList = new ArrayList<>();

        try{
            conn = DBConUtil.getConn();

            String sql = "select sno, sex, sname, admission_data, graduation_data, major, status from student where sno like ? or sname like ? or student.admission_data like ? or graduation_data like ? or major like ?";

            pstmt = conn.prepareStatement(sql);

            String info  = student.getSearchInfo();
            info = info.trim();
            info = "%" + info + "%";

            pstmt.setString(1, info);
            pstmt.setString(2, info);
            pstmt.setString(3, info);
            pstmt.setString(4, info);
            pstmt.setString(5, info);

            rs = pstmt.executeQuery();

            while(rs.next()){
                Student studenttp = new Student();
                studenttp.setSno(rs.getString("sno"));
                studenttp.setSex(rs.getInt("sex"));
                studenttp.setSname(rs.getString("sname"));
                studenttp.setAdmission_data(rs.getString("admission_data"));
                studenttp.setGraduation_data(rs.getString("graduation_data"));
                studenttp.setMajor(rs.getString("major"));
                studenttp.setStatus(rs.getInt("status"));
                studentList.add(studenttp);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBConUtil.close(rs, pstmt, null);
        }
        return studentList;
    }

    @Override
    public int updateAllByAdmin(String sno, int sex, String sname, String admission_data, String graduation_data, String major) {
        Connection conn = DBConUtil.getConn();
        PreparedStatement pstmt = null;
        String sql = "update student set sex = ? , sname = ?, admission_data = ?, graduation_data = ?, major = ?  where sno = ? ";
        int i = 0;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,sex);
            pstmt.setString(2,sname);
            pstmt.setString(3,admission_data);
            pstmt.setString(4,graduation_data);
            pstmt.setString(5,major);
            pstmt.setString(6,sno);
            i = pstmt.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBConUtil.close(null, pstmt, null);
        }
        return i;
    }

    @Override
    public int resetPwdByAdmin(String sno) {
        Connection conn = DBConUtil.getConn();
        PreparedStatement pstmt = null;
        String sql = "update student set password = '123456' where sno = ? ";
        int i = 0;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,sno);
            i = pstmt.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBConUtil.close(null, pstmt, null);
        }
        return i;
    }

    @Override
    public Page<Student> searchAllStudnetWithPage(int pageNum, int pageSize, Student student) {

        List<Student> studentList = this.searchStudent(student);
        int totalRecord = studentList.size();

        Page page = new Page(pageNum, pageSize, totalRecord);

        int startIndex = page.getStartIndex();

        page.setList(this.searchPageStudent(startIndex, pageSize, student));

        return page;
    }

    private List<Student> searchPageStudent(int startIndex, int pageSize, Student student){
        PreparedStatement pstmt = null;
        Connection conn = null;
        ResultSet rs = null;
        List<Student> studentList = new ArrayList<>();

        try{
            conn = DBConUtil.getConn();

            String sql = "select sno, sex, sname, admission_data, graduation_data, major, status from student where sno like ? or sname like ? or student.admission_data like ? or graduation_data like ? or major like ? limit ?, ?";

            pstmt = conn.prepareStatement(sql);

            String info  = student.getSearchInfo();
            info = info.trim();
            info = "%" + info + "%";

            pstmt.setString(1, info);
            pstmt.setString(2, info);
            pstmt.setString(3, info);
            pstmt.setString(4, info);
            pstmt.setString(5, info);
            pstmt.setInt(6, startIndex);
            pstmt.setInt(7, pageSize);

            rs = pstmt.executeQuery();

            while(rs.next()){
                Student studenttp = new Student();
                studenttp.setSno(rs.getString("sno"));
                studenttp.setSex(rs.getInt("sex"));
                studenttp.setSname(rs.getString("sname"));
                studenttp.setAdmission_data(rs.getString("admission_data"));
                studenttp.setGraduation_data(rs.getString("graduation_data"));
                studenttp.setMajor(rs.getString("major"));
                studenttp.setStatus(rs.getInt("status"));
                studentList.add(studenttp);

            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBConUtil.close(rs, pstmt, null);
        }
        return studentList;
    }

}
