package Service.impl;

import Bean.Admin;
import Bean.Student;
import Dao.IAdminDao;
import Dao.impl.IAdminDaoImpl;
import Service.IAdminService;


public class IAdminServiceImpl implements IAdminService {

    IAdminDao iAdminDao = new IAdminDaoImpl();

    @Override
    public Admin login(Admin admin) {
        return iAdminDao.login(admin);
    }

    @Override
    public boolean addStudent(Student student) {
        return iAdminDao.addStudent(student)>0?true:false;
    }

}
