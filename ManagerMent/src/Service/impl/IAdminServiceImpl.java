package Service.impl;

import Bean.*;
import Dao.IAdminDao;
import Dao.impl.IAdminDaoImpl;
import Service.IAdminService;

import java.util.List;


public class IAdminServiceImpl implements IAdminService {

    IAdminDao iAdminDao = new IAdminDaoImpl();

    @Override
    public Admin login(Admin admin) {
        return iAdminDao.login(admin);
    }

    @Override
    public boolean addStudent(Student student) {
        return iAdminDao.addStudent(student)>0?true:false;
    }

    @Override
    public boolean checkSno(String sno) {
        return iAdminDao.checkSno(sno);
    }

    @Override
    public boolean checkCno(String cno) {
        return iAdminDao.checkCno(cno);
    }

    @Override
    public boolean checkGrade(double grade) {
        return iAdminDao.checkGrade(grade);
    }

    @Override
    public boolean addCourseSelection() {
        return false;
    }

    @Override
    public boolean addScore(Score score) {
        return iAdminDao.addScore(score)>0?true:false;
    }

    @Override
    public boolean addCourse(Course course) {
        return iAdminDao.addCourse(course)>0?true:false;
    }

    @Override
    public boolean updateStatusByAdmin(String sno) {
        int i = iAdminDao.updateStatusByAdmin(sno);
        return i > 0 ? true:false;
    }

    @Override
    public List<Student> getStudentListByAdmin() {
        return iAdminDao.getStudentListByAdmin();
    }

    @Override
    public boolean updateAllByAdmin(String sno, int sex, String sname, String admission_data, String graduation_data, String major) {
        int i = iAdminDao.updateAllByAdmin(sno, sex, sname, admission_data, graduation_data, major);
        return i > 0 ? true:false;
    }

    @Override
    public boolean resetPwdByAdmin(String sno) {
        int i = iAdminDao.resetPwdByAdmin(sno);
        return i > 0 ? true:false;
    }

    @Override
    public Page<Student> searchAllStudnetWithPage(int pageNum, int pageSize, Student student) {
        return iAdminDao.searchAllStudnetWithPage(pageNum, pageSize, student);
    }

    @Override
    public boolean updateGradeByAdmin(String sno, String cno, double grade) {
        int i = iAdminDao.updateGradeByAdmin(sno, cno, grade);
        return i > 0 ? true:false;
    }

    @Override
    public boolean delGradeByAdmin(String sno, String cno) {
        int i = iAdminDao.delGradeByAdmin(sno, cno);
        return i > 0 ? true:false;
    }



    @Override
    public List<Score> searchScore(Score score) {
        return iAdminDao.searchScore(score);
    }

    @Override
    public List<Course> searchCourse(Course course) {
        return iAdminDao.searchCourse(course);
    }

    @Override
    public List<Student> searchStudent(Student student) {
        return iAdminDao.searchStudent(student);
    }

}
