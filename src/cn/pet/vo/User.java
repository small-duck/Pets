package cn.pet.vo;

import java.util.HashSet;
import java.util.Set;

import com.sun.org.apache.bcel.internal.generic.NEW;

public class User {
	/**
	 *  user_id              int not null,

   signature            varchar(20),
   userImag             varchar(30),
	 */
	private Integer user_id;
	private String signature;//ǩ��
	private String userImag;//�û�ͷ��
	
	private Register register;
	private Set<Pettalk> pettalks;
	
	private Set<Rypet> rypets= new HashSet<Rypet>();
	public Set<Rypet> getRypets() {
		return rypets;
	}
	public void setRypets(Set<Rypet> rypets) {
		this.rypets = rypets;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	public String getUserImag() {
		return userImag;
	}
	public void setUserImag(String userImag) {
		this.userImag = userImag;
	}
	public Register getRegister() {
		return register;
	}
	public void setRegister(Register register) {
		this.register = register;
	}
	public Set<Pettalk> getPettalks() {
		return pettalks;
	}
	public void setPettalks(Set<Pettalk> pettalks) {
		this.pettalks = pettalks;
	}
}
