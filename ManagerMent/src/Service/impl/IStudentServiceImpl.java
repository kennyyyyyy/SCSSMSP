package Service.impl;

import Bean.Student;
import Dao.IStudentDao;
import Dao.impl.IStudentDaoImpl;
import Service.IStudentService;

public class IStudentServiceImpl implements IStudentService {

    private IStudentDao iStudentDao = new IStudentDaoImpl();

    @Override
    public Student login(Student student) {
        return iStudentDao.login(student);
    }
}
