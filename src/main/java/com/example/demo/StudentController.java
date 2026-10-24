package com.example.demo;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StudentController {

    private final StudentService studentService;

    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    // 1. Display student registration form (Create)
    @GetMapping("/")
    public String showForm() {
        return "student-form";
    }

    // 2. Read form and save student
    @PostMapping("/saveStudent")
    public String saveStudent(Student student) {
        studentService.saveStudent(student);
        return "redirect:/students";
    }

    // 3. Display all students (Read)
    @GetMapping("/students")
    public String getStudents(Model model) {
        List<Student> students = studentService.getAllStudents();
        model.addAttribute("students", students);
        return "student-list";
    }

    // 4. Search student by Registration Number (Search)
    @GetMapping("/searchStudent")
    public String searchStudent(@RequestParam("regno") int regno, Model model) {
        Student student = studentService.getStudentById(regno);
        model.addAttribute("student", student);
        model.addAttribute("searchRegno", regno);
        return "student-search";
    }

    // 5. Show edit form for student (Update step 1)
    @GetMapping("/editStudent")
    public String showEditForm(@RequestParam("regno") int regno, Model model) {
        Student student = studentService.getStudentById(regno);
        model.addAttribute("student", student);
        return "student-edit";
    }

    // 6. Update student details (Update step 2)
    @PostMapping("/updateStudent")
    public String updateStudent(Student student) {
        studentService.saveStudent(student);
        return "redirect:/students";
    }

    // 7. Delete student (Delete)
    @GetMapping("/deleteStudent")
    public String deleteStudent(@RequestParam("regno") int regno) {
        studentService.deleteStudent(regno);
        return "redirect:/students";
    }
}
