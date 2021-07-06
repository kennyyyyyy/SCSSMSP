package Service.impl;

import Bean.GraduationStudent;
import Bean.Student;
import Dao.IStudentDao;
import Dao.impl.IStudentDaoImpl;
import Service.IStudentService;

import java.util.List;

public class IStudentServiceImpl implements IStudentService {

    private IStudentDao iStudentDao = new IStudentDaoImpl();

    @Override
    public Student login(Student student) {
        return iStudentDao.login(student);
    }

    @Override
    public List<GraduationStudent> getGraduationList() {
        return iStudentDao.getGraduationList();
    }


}
