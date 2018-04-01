package cn.pet.vo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.web.context.request.NativeWebRequest;


import cn.pet.vo.Pettalk;

@Repository(value="userDaoImpl")
public class UserDaoImpl extends HibernateDaoSupport implements UserDao{
	@Resource(name="sessionFactory")
	public void setSesstionFactory2(SessionFactory sessionFactory){
		this.setSessionFactory(sessionFactory);
	}
	@Override
	public void  sendPetTalk(Pettalk pettalk) {//����˵˵
		System.out.println("userDaoImp���sendPet����ִ����");
	    this.getHibernateTemplate().save(pettalk);//���浽���ݿ�
		
	}
	public List<Pettalk> findAllPetTalk() {//��ѯ����˵˵
		List<Pettalk> list=(List<Pettalk>) this.getHibernateTemplate().find("from Pettalk ");
		if (list != null && list.size()>0) {
			return list;
		}
		return null;
	}
	
	public List<Pettalk> findAll(int pageNow, int pageSize) {//��ѯ��pageNow��pageSize+pageNow��˵˵
		if (pageSize > 0 && pageNow > 0){
	     System.out.println("dao���ѯ");
	     Session session=this.getSessionFactory().openSession();
		 Criteria criteria = session.createCriteria(Pettalk.class);
		 criteria.setFirstResult(pageNow*pageSize-pageSize);
		 criteria.setMaxResults(pageSize);
		 List<Pettalk> list = criteria.list();
		 if(list==null){
		 }else{
			 System.out.println("list��Ϊ��");
		 }
		 for (Pettalk customer : list) {
			System.out.println(customer);
		 }
		    return list;
		}else{
			return null;
		}	
		 
           
	}
	
	public int findTotalCount() {//����ܼ�¼��
        String hql="select count(*) from Pettalk";
        List<Long> list=(List<Long>) this.getHibernateTemplate().find(hql);
        int count=list.get(0).intValue();
        count=(int) Math.ceil((count + 1.0 - 1.0) / 5);//����ȡ��
        if(list!=null&&list.size()>0){
            return count;
        }
        return 0;
    }

   
	
}
