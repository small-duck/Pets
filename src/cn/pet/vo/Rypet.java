package cn.pet.vo;

import java.util.Date;

public class Rypet {
	/**
	 * rypet_id             int not null auto_increment,
   user_id              int,
   petName              varchar(20),
   petSort              varchar(20),
   petBreed             varchar(20),
   petSex               varchar(20),
   petAge               int,
   petWay               varchar(20),
   petIntroduce         varchar(120),
   petLink              varchar(30),
   petLinkNum           char(20),
   petLInkqq            varchar(11),
   petLinkWchat         varchar(11),
   petFindImage         varchar(150),
   petFindAddr          varchar(30),
   petTitle             varchar(30),
   state                int,
   petBody              char(10),
   petHair              char(20),
	 */
	private Integer rypet_id;
//	private User user;
	private Register register;
	
	private String petName;//��������
	private String petSort;//��������
	private String petBreed;//�������
	private String petSex;//�����Ա�
	private String petAge;//��������
	private String petWay;//����������ʽ
	private String petIntroduce;//�����������
	private String petLink;//������ϵ����
	private String petLinkNum;//������ϵ�˵绰
	private String petLInkqq;//������ϵ��qq
	private String petLinkWchat;//������ϵ��΢��
	private String petFindImage;//����ͼƬ
	private String petFindfimg;//��ͼ1
	private String petFindfimg2;//��ͼ2
	
	
	private String petFindAddr;//����������ַ
	private String petTitle;//���﷢������
	private Integer state;//״̬�� 1 ��ʾ���졣0��ʾ����
	private String petBody;//��������
	private String petHair;//����ë��
	private String userName;//������û���
	private String putTime;//������ʱ��
	public String getPetFindfimg2() {
		return petFindfimg2;
	}
	public void setPetFindfimg2(String petFindfimg2) {
		this.petFindfimg2 = petFindfimg2;
	}
	public String getPutTime() {
		return putTime;
	}
	public void setPutTime(String putTime) {
		this.putTime = putTime;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getPetFindfimg() {
		return petFindfimg;
	}
	public void setPetFindfimg(String petFindfimg) {
		this.petFindfimg = petFindfimg;
	}
	public Register getRegister() {
		return register;
	}
	public void setRegister(Register register) {
		this.register = register;
	}
	public Integer getRypet_id() {
		return rypet_id;
	}
	public void setRypet_id(Integer rypet_id) {
		this.rypet_id = rypet_id;
	}
	/*public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}*/
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetSort() {
		return petSort;
	}
	public void setPetSort(String petSort) {
		this.petSort = petSort;
	}
	public String getPetBreed() {
		return petBreed;
	}
	public void setPetBreed(String petBreed) {
		this.petBreed = petBreed;
	}
	public String getPetSex() {
		return petSex;
	}
	public void setPetSex(String petSex) {
		this.petSex = petSex;
	}
	
	public String getPetAge() {
		return petAge;
	}
	public void setPetAge(String petAge) {
		this.petAge = petAge;
	}
	public String getPetWay() {
		return petWay;
	}
	public void setPetWay(String petWay) {
		this.petWay = petWay;
	}
	public String getPetIntroduce() {
		return petIntroduce;
	}
	public void setPetIntroduce(String petIntroduce) {
		this.petIntroduce = petIntroduce;
	}
	public String getPetLink() {
		return petLink;
	}
	public void setPetLink(String petLink) {
		this.petLink = petLink;
	}
	public String getPetLinkNum() {
		return petLinkNum;
	}
	public void setPetLinkNum(String petLinkNum) {
		this.petLinkNum = petLinkNum;
	}
	public String getPetLInkqq() {
		return petLInkqq;
	}
	public void setPetLInkqq(String petLInkqq) {
		this.petLInkqq = petLInkqq;
	}
	public String getPetLinkWchat() {
		return petLinkWchat;
	}
	public void setPetLinkWchat(String petLinkWchat) {
		this.petLinkWchat = petLinkWchat;
	}
	public String getPetFindImage() {
		return petFindImage;
	}
	public void setPetFindImage(String petFindImage) {
		this.petFindImage = petFindImage;
	}
	public String getPetFindAddr() {
		return petFindAddr;
	}
	public void setPetFindAddr(String petFindAddr) {
		this.petFindAddr = petFindAddr;
	}
	public String getPetTitle() {
		return petTitle;
	}
	public void setPetTitle(String petTitle) {
		this.petTitle = petTitle;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getPetBody() {
		return petBody;
	}
	public void setPetBody(String petBody) {
		this.petBody = petBody;
	}
	public String getPetHair() {
		return petHair;
	}
	public void setPetHair(String petHair) {
		this.petHair = petHair;
	}
	
}
