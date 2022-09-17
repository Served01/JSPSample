package Beans;

public class ArithBean {
 private int valuex;
 private int valuey;
 private int mark;
 private int result;
 
public int getValuex() {
	return valuex;
}
public void setValuex(int valuex) {
	this.valuex = valuex;
}
public int getValuey() {
	return valuey;
}
public void setValuey(int valuey) {
	this.valuey = valuey;
}
public int getMark() {
	return mark;
}
public void setMark(int mark) {
	this.mark = mark;
}
public int getResult() {
	if(mark==1){
		result = valuex + valuey;
		
	} else if(mark==2){
		result = valuex - valuey;
		
	} else if(mark==3){
		result = valuex * valuey;
		
	} else if(mark==4){
		result = valuex / valuey;
		
	} return result;
}

}


