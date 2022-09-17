package Beans;

public class customerVO {
	//데이터 은닉성
	private int no;
	private String name;
	private int age;
	
	public customerVO(String name, int age) {
		this.name = name;
		this.age = age;		
	}
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}

}
