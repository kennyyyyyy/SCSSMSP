package Service;

import Bean.GraduationStudent;
import Bean.Student;

import java.util.List;

public interface IStudentService {

    /*
    学生登录
     */
    Student login(Student student);

    /**
     * 毕业学生信息
     * @return List<GraduationStudent>
     */
    List<GraduationStudent> getGraduationList();

    /**
     * 根据sno修改学生的password
     * @param sno,password
     * @return boolean true:success
     */
    public boolean modifyPassword(String sno, String password);
}
