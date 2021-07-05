package Dao;

import Bean.Admin;
import Bean.Course;
import Bean.Score;
import Bean.Student;

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
}
