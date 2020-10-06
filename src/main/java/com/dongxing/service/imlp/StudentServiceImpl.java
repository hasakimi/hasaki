package com.dongxing.service.imlp;

import com.dongxing.dao.StudentDao;
import com.dongxing.domain.Student;
import com.dongxing.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service(value = "studentService")
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentDao studentDao;

    public StudentDao getStudentDao() {
        return studentDao;
    }

    public void setStudentDao(StudentDao studentDao) {
        this.studentDao = studentDao;
    }

    @Override
    public List<Student> findStudents() {
        List<Student> studentList = studentDao.selectAllStudents();
        return studentList;
    }

    @Override
    public int addStudent(Student student) {
        int i = studentDao.insertStudent(student);
        return i;
    }
}
