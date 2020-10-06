package com.dongxing.dao;

import com.dongxing.domain.Student;

import java.util.List;

public interface StudentDao {
    List<Student> selectAllStudents();
    int insertStudent(Student student);
}
