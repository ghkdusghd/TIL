package kr.bit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.bit.entity.Student;

@Mapper
public interface StudentMapper {

	public List<Student> getAllStudent();
	
	public Student getOneStudent(int num);
	
	public void updateStudent(Student student);
	
	public void deleteStudent(int num);
	
	@Select("select * from test_student natural join test_student_info where name like concat('%', #{searchName} ,'%') order by name")
	public List<Student> searchStudent(String searchName);
	
	public void insertStudent(Student student);
	
}
