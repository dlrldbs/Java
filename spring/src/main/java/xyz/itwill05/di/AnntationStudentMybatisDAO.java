package xyz.itwill05.di;

import java.util.List;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

//@Repository("studentDAO")
@Repository
@Primary
public class AnntationStudentMybatisDAO implements StudentDAO {
	public AnntationStudentMybatisDAO() {
		System.out.println("### AnntationStudentMybatisDAO 클래스의 기본 생성자 호출 ###");
	}

	@Override
	public int insertStudent(Student student) {
		System.out.println("*** AnntationStudentMybatisDAO 클래스의 insertStudent(Student student) 메소드 호출 ***");
		return 0;
	}

	@Override
	public int updateStudent(Student student) {
		System.out.println("*** AnntationStudentMybatisDAO 클래스의 updateStudent(Student student) 메소드 호출 ***");
		return 0;
	}

	@Override
	public int deleteStudent(int num) {
		System.out.println("*** AnntationStudentMybatisDAO 클래스의 deleteStudent(int num) 메소드 호출 ***");
		return 0;
	}

	@Override
	public Student selectStudent(int num) {
		System.out.println("*** AnntationStudentMybatisDAO 클래스의 selectStudent(int num) 메소드 호출 ***");
		return null;
	}

	@Override
	public List<Student> selectStudentList() {
		System.out.println("*** AnntationStudentMybatisDAO 클래스의 selectStudentList() 메소드 호출 ***");
		return null;
	}
}
