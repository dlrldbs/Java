package xyz.itwill.dao;

import java.util.List;

import xyz.itwill.dto.StudentDTO;

//STUDENT 테이블의 학생정보에 대한 삽입,변경,삭제,검색 기능을 제공하기 위한 클래스 - JDBC
public class StudentDAO extends JdbcDAO {
	private static StudentDAO _dao;
	
	private StudentDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao=new StudentDAO();
	}
	
	public static StudentDAO getDAO() {
		return _dao;
	}
	
	//학생정보를 전달받아 STUDENT 테이블에 삽입하고 삽입행의 갯수를 반환하는 메소드
	public int insertStudent(StudentDTO student) {
		
	}
	
	//학생정보를 전달받아 STUDENT 테이블에 저장된 학생정보를 변경하고 변경행의 갯수를 반환하는 메소드
	public int updateStudent(StudentDTO student) {
		
	}
	
	//학생번호를 전달받아 STUDENT 테이블에 저장된 학생정보를 삭제하고 삭제행의 갯수를 반환하는 메소드
	public int deleteStudent(int no) {
		
	}

	//학생정보를 전달받아 STUDENT 테이블에 저장된 해당 학생번호의 학생정보를 검색하여 반환하는 메소드
	public StudentDTO selectStudent(int no) {
		
	}
	
	//STUDENT 테이블에 저장된 모든 학생정보를 검색하여 반환하는 메소드
	public List<StudentDTO> selectStudentList() {
		
	}
}













