package xyz.itwill00.log;

public class HelloWorldApp {
	public static void main(String[] args) {
		HelloWorld hw=new HelloWorld();
		String message=hw.hello("홍길동");
		System.out.println("message = "+message);
	}
}
