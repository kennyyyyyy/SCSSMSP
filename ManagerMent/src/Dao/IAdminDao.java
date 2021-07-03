package Dao;

import Bean.Admin;
import Bean.Student;

public interface IAdminDao {
    Admin login(Admin admin);

    int addStudent(Student student);
}
