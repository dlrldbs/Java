package xyz.itwill05.di;

import java.util.List;

public class AnnotationStudentServiceImpl implements StudentService {
	private StudentDAO studentDAO;
	
	public AnnotationStudentServiceImpl() {
		System.out.println("### AnnotationStudentServiceImpl 클래스의 기본 생성자 호출 ###");
	}
	
	@Override
	public void addStudent(Student student) {
		System.out.println("*** AnnotationStudentServiceImpl 클래스 addStudent(Student student) 메소드 호출 ***");
		studentDAO.insertStudent(student);
	}

	@Override
	public void modifyStudent(Student student) {
		System.out.println("*** AnnotationStudentServiceImpl 클래스 modifyStudent(Student student) 메소드 호출 ***");
		studentDAO.updateStudent(student);
	}

	@Override
	public void removeStudent(int num) {
		System.out.println("*** AnnotationStudentServiceImpl 클래스 removeStudent(int num) 메소드 호출 ***");
		studentDAO.deleteStudent(num);
	}

	@Override
	public Student getStudent(int num) {
		System.out.println("*** AnnotationStudentServiceImpl 클래스 getStudent(int num) 메소드 호출 ***");
		return studentDAO.selectStudent(num);
		
	}

	@Override
	public List<Student> getStudentList() {
		System.out.println("*** AnnotationStudentServiceImpl 클래스 getStudentList() 메소드 호출 ***");
		return studentDAO.selectStudentList();
	}
}
