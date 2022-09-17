package Beans;

import java.util.Vector;

// Data Access Object
public class customerDAO {

	private String name;// 클래스변수 
	//private int age;// 클래스변수 : 형태상 필요가 없게됨
	
	//customerVO 객체를 저장하기 위하여 vector객체를 선언
	private Vector<customerVO> vector;//vector Object(= 참조 변수 = 포인터)
	
	public void setName(String name) {
		this.name = name;
	}
	
	
	public void setAge(int age) {
		//this.age = age;
		vector.addElement(new customerVO(name, age));
		
	}
	
	//생성자 메소드를 이용하여 vector객체를 생성
	public customerDAO() {
		
		vector = new Vector<customerVO>(); //이게 없으면 맨처음에 vector자체가 null 상태라 진행이 안됨
		
	}	
	
	
	
	public customerVO[] getCustomer() {
		
		int size = vector.size();
		
		customerVO[] c = new customerVO[size];
		
		for(int i=0; i < size; i++) {
			c[i] = (customerVO) vector.elementAt(i);
		}
		return c;
	}
	
	//고개정보 삭제
	public void setDelete(int cust_index){
		vector.removeElementAt(cust_index - 1); 
		
	}
	
}
