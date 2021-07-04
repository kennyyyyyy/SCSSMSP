package Dao;

import Bean.Admin;
import Bean.Score;
import Bean.Student;

public interface IAdminDao {
    Admin login(Admin admin);

    int addStudent(Student student);

    int addScore(Score score);

    boolean checkSno(String sno);
    boolean checkCno(String cno);
}
