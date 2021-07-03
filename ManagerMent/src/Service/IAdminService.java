package Service;

import Bean.Admin;
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
}
