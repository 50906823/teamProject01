package base.dto;

public class AreaDto {
	String area_num;
	String area_name;
	
	public String getArea_num() {
		return area_num;
	}
	public void setArea_num(String area_num) {
		this.area_num = area_num;
	}
	public String getArea_name() {
		return area_name;
	}
	public void setArea_name(String area_name) {
		this.area_name = area_name;
	}
	
	@Override
	public String toString() {
		return "PersonDto [area_num=" + area_num + ", area_name=" + area_name + "]";
	}
	

}