package com.example.demo;

import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class StudentService {

    private final StudentRepository studentRepository;

    public StudentService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    // Create & Update
    public void saveStudent(Student student) {
        studentRepository.save(student);
    }

    // Read all
    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    // Search by regno
    public Student getStudentById(int regno) {
        return studentRepository.findById(regno).orElse(null);
    }

    // Delete by regno
    public void deleteStudent(int regno) {
        studentRepository.deleteById(regno);
    }
}
