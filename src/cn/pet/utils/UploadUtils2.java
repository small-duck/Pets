package cn.pet.utils;

import java.util.UUID;

public class UploadUtils2 {
	
	public static  String  getUUIDName(String filename[]) {
		int i=0;
		//�Ȳ���
		int index= filename[i].indexOf(".");
		//��ȡ
		String lastname = filename[i].substring(index, filename[i].length());
		//����Ψһ�ַ���
		String uuid = UUID.randomUUID().toString().replace("-", "");
		return uuid+lastname;
		
	}
	public static void main(String[] args) {
		String[] filename={"123.jsp","456.jsp"};
		for(int i= 0;i<filename.length;i++){
			
			String uuid = getUUIDName(filename);
			System.out.println(uuid);
		}
	}
}
