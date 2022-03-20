package com.greatlearning.collegefest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatlearning.collegefest.model.Student;
import com.greatlearning.collegefest.service.StudentService;

@Controller
@RequestMapping("/students")
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/list")
	public String listStudent(Model model) {
		
		List<Student> students = studentService.findAll();
		
		model.addAttribute("Students", students);
		
		return "list-students";
	}
	
	@RequestMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {
		
		Student student = new Student();
		
		model.addAttribute("Student", student);
		model.addAttribute("Heading", "Add a new Student");
		
		return "student-form";
	}
	
	@RequestMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("studentId") int id, Model model) {
		
		Student student = studentService.findById(id);
		
		model.addAttribute("Student", student);
		model.addAttribute("Heading", "Update the Student Details");
		
		return "student-form";
	}
	
	@PostMapping("/save")
	public String saveStudent(@RequestParam("id") int id, @RequestParam("name") String name,
			@RequestParam("department") String department, @RequestParam("country") String country) {
		
		Student student;
		
		if (id != 0) {
			student = studentService.findById(id);
			student.setName(name);
			student.setDepartment(department);
			student.setCountry(country);
			
		} else {
			student = new Student(name, department, country);
		}
		
		studentService.save(student);
		
		return "redirect:/students/list";
	}
	
	@RequestMapping("/delete")
	public String deleteStudent(@RequestParam("studentId") int id) {
		
		studentService.deleteById(id);
		
		return "redirect:/students/list";
	}
	
}
