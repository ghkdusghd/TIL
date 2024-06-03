package kr.bit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.bit.entity.Student;
import kr.bit.mapper.StudentMapper;

@Controller
public class StudentController {

	@Autowired
	StudentMapper studentMapper;
	
	@ResponseBody
	@GetMapping("/getOneStudent")
	public Student getOneStudent(@RequestParam int num) {
		Student student = studentMapper.getOneStudent(num);
		return student;
	}
	
	@PostMapping("/updateStudent")
	public String updateStudent(@ModelAttribute Student student) {
		studentMapper.updateStudent(student);
		return "redirect:/";
	}
	
	@GetMapping("/deleteStudent")
	public String deleteStudent(@RequestParam int num) {
		studentMapper.deleteStudent(num);
		return "redirect:/";
	}
	
	@ResponseBody
	@GetMapping("/searchStudent")
	public List<Student> searchStudent(@RequestParam String searchName) {
		List<Student> searchList = studentMapper.searchStudent(searchName);
		return searchList;
	}
	
	@PostMapping("/insertStudent")
	public String insertStudent(@ModelAttribute Student student) {
		studentMapper.insertStudent(student);
		return "redirect:/";
	}
}
