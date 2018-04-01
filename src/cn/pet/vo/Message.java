package cn.pet.vo;

public class Message {
	private int code;
	private String data;

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "Message [code=" + code + ", data=" + data + "]";
	}

}
