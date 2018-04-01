package cn.pet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.pet.vo.Pettalk;
import cn.pet.vo.UserDaoImpl;
@Service(value="userService")
@Transactional
public class UserService {
	@Autowired
	private UserDaoImpl userDaoImpl;

	public UserService() {

	}

	
	public void  sendPetTalk(Pettalk pettalk){//��˵˵
		System.out.println("userService����ִ����");
		userDaoImpl.sendPetTalk(pettalk);
	}
	public List<Pettalk> findAllPetTalk() {
		return userDaoImpl.findAllPetTalk();
		
	}

	public List<Pettalk> findAll(int pageNow,int pageSize) {//��ѯ��pageNow��pageNow+pageSize
		return userDaoImpl.findAll(pageNow, pageSize);	
	}
	
	public int findTotalCount() {// �����ҳ��
		return userDaoImpl.findTotalCount();

	}

}
