package Dao;

import Bean.GraduationStudent;
import Bean.Student;

import java.util.List;

public interface IStudentDao {
    Student login(Student student);


    /**
     * 毕业学生信息
     * @return List<GraduationStudent>
     */
    List<GraduationStudent> getGraduationList();
}
