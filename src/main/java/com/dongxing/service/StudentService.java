package com.dongxing.service;

import com.dongxing.domain.Student;

import java.util.List;

public interface StudentService {
    List<Student> findStudents();
    int addStudent(Student student);
}
