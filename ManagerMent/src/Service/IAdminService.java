package Service;

import Bean.*;

import java.util.List;

public interface IAdminService {
    /*
    管理员登录
     */
    Admin login(Admin admin);

    /*
    添加新生学籍信息
     */
    boolean addStudent(Student student);

    /*
    检查学号是否重复
     */
    boolean checkSno(String sno);

    /*
    检查课程号是否重复
     */
    boolean checkCno(String cno);

    /**
     * 检查分数规则
     * @param grade
     * @return
     */
    boolean checkGrade(double grade);

    /*
    添加学生选课信息
     */
    boolean addCourseSelection();

    /*
    添加成绩信息
     */
    boolean addScore(Score score);

    /**
     * 添加课程信息
     * @param course
     * @return
     */
    boolean addCourse(Course course);

    /*
    搜索成绩信息
     */
    List<Score> searchScore(Score score);

    /**
     * 搜索课程信息
     * @param course
     * @return
     */
    List<Course> searchCourse(Course course);

    /**
     * 搜索学生信息
     * @param student
     * @return
     */
    List<Student> searchStudent(Student student);

    /**
     * 根据sno审核用户
     * @param sno
     * @return boolean true:success
     */
    boolean updateStatusByAdmin(String sno);

    /**
     * 管理员获取学生部分信息
     * @return List<Student>
     */
    List<Student> getStudentListByAdmin();

    /**
     * 根据sno修改学生的sex,sname,admission_data,graduation_data,major
     * @param sno,sex,sname,admission_data,graduation_data,major
     * @return boolean true:success
     */
    public boolean updateAllByAdmin(String sno, int sex, String sname, String admission_data, String graduation_data, String major);


    /**
     * 根据sno重置密码
     * @param sno
     * @return boolean true:success
     */
    public boolean resetPwdByAdmin(String sno);

    /**
     * 获得分页的所有新信息
     * @param pageNum
     * @param pageSize
     * @return
     */
    public Page<Student> searchAllStudnetWithPage(int pageNum, int pageSize, Student student);
}
