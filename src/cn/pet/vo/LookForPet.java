package cn.pet.vo;

public class LookForPet {
	/**
	 * create table lookforpet
(
   lookforpet_id        int not null,
   user_id              int,
   lookforBreed         char(30),
   lookforSort          char(20),
   lookforAddr          varchar(90),
   lookforImag          varchar(90),
   petPerson            char(10),
   petPersonLink        char(11),
   primary key (lookforpet_id)
);

	 */
	private Integer lookforpet_id;
	
	private Register register;
	
	private String lookforBreed;//�������
	private String lookforSort;//��������
	private String lookforAddr;//���ﶪʧ��ַ
	private String lookforImag;//����ͼƬ
	private String petPerson;//��ϵ��
	private String petPersonLink;//��ϵ��ʽ
	public Integer getLookforpet_id() {
		return lookforpet_id;
	}
	public void setLookforpet_id(Integer lookforpet_id) {
		this.lookforpet_id = lookforpet_id;
	}
	public Register getRegister() {
		return register;
	}
	public void setRegister(Register register) {
		this.register = register;
	}
	public String getLookforBreed() {
		return lookforBreed;
	}
	public void setLookforBreed(String lookforBreed) {
		this.lookforBreed = lookforBreed;
	}
	public String getLookforSort() {
		return lookforSort;
	}
	public void setLookforSort(String lookforSort) {
		this.lookforSort = lookforSort;
	}
	public String getLookforAddr() {
		return lookforAddr;
	}
	public void setLookforAddr(String lookforAddr) {
		this.lookforAddr = lookforAddr;
	}
	public String getLookforImag() {
		return lookforImag;
	}
	public void setLookforImag(String lookforImag) {
		this.lookforImag = lookforImag;
	}
	public String getPetPerson() {
		return petPerson;
	}
	public void setPetPerson(String petPerson) {
		this.petPerson = petPerson;
	}
	public String getPetPersonLink() {
		return petPersonLink;
	}
	public void setPetPersonLink(String petPersonLink) {
		this.petPersonLink = petPersonLink;
	}
}
