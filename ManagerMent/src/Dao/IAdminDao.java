package Dao;

import Bean.*;

import java.util.List;
import java.util.zip.CheckedOutputStream;

public interface IAdminDao {

    /**
     * 管理员登录
     * @param admin
     * @return
     */
    Admin login(Admin admin);

    /**
     * 添加学生信息
     * @param student
     * @return
     */
    int addStudent(Student student);

    /**
     * 添加分数信息
     * @param score
     * @return
     */
    int addScore(Score score);

    /**
     * 添加课程信息
     * @param course
     * @return
     */
    int addCourse(Course course);

    /**
     * 检查学号情况
     * @param sno
     * @return
     */
    boolean checkSno(String sno);

    /**
     * 检查课程编号情况
     * @param cno
     * @return
     */
    boolean checkCno(String cno);

    /**
     * 检查分数规则
     * @param grade
     * @return
     */
    boolean checkGrade(double grade);

    /**
     * 根据sno审核用户
     * @param sno
     * @return boolean true:success
     */
    int updateStatusByAdmin(String sno);

    /**
     * 管理员获取学生部分信息
     * @return List<Student>
     */
    List<Student> getStudentListByAdmin();

    /**
     * 搜索分数信息
     * @param score
     * @return
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
     * 根据sno修改学生的sex,sname,admission_data,graduation_data,major
     * @param sno,sex,sname,admission_data,graduation_data,major
     * @return boolean true:success
     */
    public int updateAllByAdmin(String sno, int sex, String sname, String admission_data, String graduation_data, String major);



    /**
     * 根据sno重置密码
     * @param sno
     * @return boolean true:success
     */
    public int resetPwdByAdmin(String sno);


    /**
     * 获得分页的所有新信息
     * @param pageNum
     * @param pageSize
     * @return
     */
    public Page<Student> searchAllStudnetWithPage(int pageNum, int pageSize, Student student);

    /**
     * 根据sno,cno修改学生的grade
     * @param sno,cno,grade
     * @return boolean true:success
     */
    public int updateGradeByAdmin(String sno, String cno, double grade);

    /**
     * 根据sno和 cno删除记录
     * @param sno ,cno
     * @return boolean true:success
     */
    public int delGradeByAdmin(String sno, String cno);

}
