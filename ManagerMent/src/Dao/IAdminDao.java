package Dao;

import Bean.Admin;
import Bean.Score;
import Bean.Student;

import java.util.List;

public interface IAdminDao {
    Admin login(Admin admin);

    int addStudent(Student student);

    int addScore(Score score);

    boolean checkSno(String sno);
    boolean checkCno(String cno);

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

    List<Score> searchScore(Score score);
}
