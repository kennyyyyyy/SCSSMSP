package Service;

import Bean.Admin;
import Bean.Score;
import Bean.Student;

public interface IAdminService {
    /*
    管理眼登录
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
    /*
    添加学生选课信息
     */
    boolean addCourseSelection();

    /*
    添加成绩信息
     */
    boolean addScore(Score score);


}
