package cn.pet.vo;

/*


*/public class Pettalk {
	private Integer pettalk_id;
	private String photoName; // �洢�ڷ��������ļ�����
	private String dt;// ʱ��
	private String photoPath;// ���·��
	private String content;// ˵˵����
	private Register register;
	public Integer getPettalk_id() {
		return pettalk_id;
	}
	public void setPettalk_id(Integer pettalk_id) {
		this.pettalk_id = pettalk_id;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	public String getDt() {
		return dt;
	}
	public void setDt(String dt) {
		this.dt = dt;
	}
	public String getPhotoPath() {
		return photoPath;
	}
	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public Register getRegister() {
		return register;
	}
	public void setRegister(Register register) {
		this.register = register;
	}

	

}
