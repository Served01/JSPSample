package loginSample;

public class LoginBean {
	
	//사용자 입력값 저장을 위한 변수
	public void setUserid(String userid) {
		this.userid = userid;
		}
		public void setPasswd(String passwd) {
		this.passwd = passwd;
		}
		public String getUserid() {
		return userid;
		}
		public String getPasswd() {
		return passwd;
		}
		
	private String userid;
	private String passwd;
	// DB 연결을 구현하지 않는 관계로 등록된 사용자 정보를 설정한 변수
	final String _userid="myuser";
	final String _passwd="1234";
	//사용자 입력값과 등록된 사용자 변수 값을 비교하는 메서드
	public boolean checkUser() {
	if((userid.equals(_userid))&&(passwd.equals(_passwd))) 
	{
	return true;
	}
	else {
	return false;
	}
}
}
