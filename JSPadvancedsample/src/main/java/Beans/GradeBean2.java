package Beans;

public class GradeBean2 {
	private String name;//이름
	private int korpoint;//성적
	private int engpoint;
	private int matpoint;
	private int totalpoint;
	private int avgpoint;
	//실무에서는 public gradebean Gradebean(){}이런식으로 하는게 실무에서는 많이 쓰임
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKorpoint() {
		return korpoint;
	}
	public void setKorpoint(int korpoint) {
		this.korpoint = korpoint;
	}
	public int getEngpoint() {
		return engpoint;
	}
	public void setEngpoint(int engpoint) {
		this.engpoint = engpoint;
	}
	public int getMatpoint() {
		return matpoint;
	}
	public void setMatpoint(int matpoint) {
		this.matpoint = matpoint;
	}
	public int getTotalpoint() {
		totalpoint=0;
		totalpoint=korpoint+engpoint+matpoint;
		return totalpoint;
	}

	
	public int getAvgpoint() {
		avgpoint = 0;
		avgpoint=totalpoint/3;
		return avgpoint;
	}
	
	
	
}
