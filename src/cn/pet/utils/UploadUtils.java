package cn.pet.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class UploadUtils {
	public static  String  getUUIDName(String filename) {
		//�Ȳ���
		int index= filename.indexOf(".");
		//��ȡ
		String lastname = filename.substring(index, filename.length());
		//����Ψһ�ַ���
		String uuid = UUID.randomUUID().toString().replace("-", "");
		return uuid+lastname;
		
	}
	public static void main(String[] args) {
		String filename="1.jsp";
		String uuid = getUUIDName(filename);
		System.out.println(uuid);
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String str = sdf.format(date);
		System.out.println(str);
		
	}
}
