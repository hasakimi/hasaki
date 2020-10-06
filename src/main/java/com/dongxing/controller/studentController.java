package com.dongxing.controller;

import com.dongxing.domain.Student;
import com.dongxing.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/student")
public class studentController {
    @Resource
    private StudentService studentService;

    //注册学生
    @RequestMapping("/addStudent.do")
    public ModelAndView addStudent(Student student) {
        String flag = "注册失败！！！";
        ModelAndView mv = new ModelAndView();
       int num = studentService.addStudent(student);
       if ( num > 0 ) {
           flag = "注册成功";
           mv.addObject("msg",flag );
           mv.setViewName("result");
       } else {
           mv.addObject("msg",flag);
           mv.setViewName("result");
       }
       return mv;
    }

    //查询学生，响应Ajax，输出数据
    @RequestMapping("/queryStudent.do")
    @ResponseBody
    public List<Student> queryStudent() {
        List<Student> studentList = studentService.findStudents();
        return studentList;
    }

}
