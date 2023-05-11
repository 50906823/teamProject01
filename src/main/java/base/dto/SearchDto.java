package base.dto;

public class SearchDto {
	String name;			 //명칭
	String postNum; 		 //우편번호
	String address; 		 //주소
	String outline;		 //개요
	String tel;			 //문의및안내
	String opening;		 //개장일
	String dayOff;		 //쉬는날
	String experienceInfo; //체험안내
	String experienceAge;	 //체험가능연령
	String limitPeople;	 //수용인원
	String period;		 //이용시기
	String hours;			 //이용시간
	String parking;		 //주차시설
	String rentalStroller; //유모차대여여부
	String withPet;		 //애완동물동반가능여부
	String detailInfo;	 //상세정보
	
	String area;        //지역, 메인 페이지 옵션에 필요
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPostNum() {
		return postNum;
	}
	public void setPostNum(String postNum) {
		this.postNum = postNum;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOutline() {
		return outline;
	}
	public void setOutline(String outline) {
		this.outline = outline;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getOpening() {
		return opening;
	}
	public void setOpening(String opening) {
		this.opening = opening;
	}
	public String getDayOff() {
		return dayOff;
	}
	public void setDayOff(String dayOff) {
		this.dayOff = dayOff;
	}
	public String getExperienceInfo() {
		return experienceInfo;
	}
	public void setExperienceInfo(String experienceInfo) {
		this.experienceInfo = experienceInfo;
	}
	public String getExperienceAge() {
		return experienceAge;
	}
	public void setExperienceAge(String experienceAge) {
		this.experienceAge = experienceAge;
	}
	public String getLimitPeople() {
		return limitPeople;
	}
	public void setLimitPeople(String limitPeople) {
		this.limitPeople = limitPeople;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getHours() {
		return hours;
	}
	public void setHours(String hours) {
		this.hours = hours;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getRentalStroller() {
		return rentalStroller;
	}
	public void setRentalStroller(String rentalStroller) {
		this.rentalStroller = rentalStroller;
	}
	public String getWithPet() {
		return withPet;
	}
	public void setWithPet(String withPet) {
		this.withPet = withPet;
	}
	public String getDetailInfo() {
		return detailInfo;
	}
	public void setDetailInfo(String detailInfo) {
		this.detailInfo = detailInfo;
	}
	
	
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
}
