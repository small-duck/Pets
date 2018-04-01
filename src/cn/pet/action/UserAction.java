package cn.pet.action;

import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.apache.logging.log4j.core.util.UuidUtil;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.pet.service.UserService;
import cn.pet.utils.UploadUtils;
import cn.pet.utils.UtilsFactory;
import cn.pet.vo.Message;
import cn.pet.vo.Pettalk;
import cn.pet.vo.Register;
import cn.pet.vo.User;

@Controller(value="userAction")
@Scope(value="prototype")
public class UserAction extends ActionSupport implements ModelDriven<Pettalk>{
	@Resource(name="userService")
	private UserService userService;
	private Pettalk pettalk=new Pettalk();
	private List<Pettalk> list;
	private int pageNow = 1;//当前页数
	private int pageSize = 1;//页面上最多显示
	
	
	HttpServletRequest request;
	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	// 接收照片需要在Action中提供三个属性:
	private File upload;// 用于接收文件
	private String uploadContentType;// 文件的MIME类型
	private String uploadFileName;// 文件名
	// 提供三个属性的set方法:
	public void setUpload(File upload) {
		this.upload = upload;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	
	@Override
	public Pettalk getModel() {	
		return pettalk;
	}
	public List<Pettalk> getList() {
		return list;
	}

	public String  sendPetTalk() throws Exception{//1:发说说(包括图片)		// 获得文件名:

		
		ServletContext application = ServletActionContext.getServletContext();
		String path = application.getRealPath("").replace("Pet", "upload");
		HttpServletRequest request = ServletActionContext.getRequest();  
		HttpSession session = request.getSession(); 
	if(session.getAttribute("uRegister")!=null){//未登陆不能发说说
		// 获得文件类型:
		String newName = UploadUtils.getUUIDName(uploadFileName);// 图片的新名字
		// 定义一个文件类型的对象.
		// 根据时间来改变文件的名字
		System.out.println("更改后的名字:" + newName);
		File diskFile = new File(path+"/"+ newName);
		// 在commons-io包下有一个工具类:
		FileUtils.copyFile(upload, diskFile);// 把文件放到服务器端的相册文件夹下	
		pettalk.setPhotoName(newName);//新名字
		pettalk.setDt(UtilsFactory.getDate());//时间
		pettalk.setPhotoPath(newName);//新路径
		pettalk.setRegister((Register)session.getAttribute("uRegister"));
		userService.sendPetTalk(pettalk);// 调用业务层
		return findAllPetTalk();
		}else{
		return LOGIN;
	   }
	
   }
	
	public String findAllPetTalk(){//2:查询所有说说
		list=userService.findAllPetTalk();
		
		if(list!=null){
			
			return "findAllPetTalkSuccess";
		}else{
			return ERROR;
		}
	}

	
	public String findAll(){//查询从pageNow到pageSize的说说
		int total = userService.findTotalCount();
		System.out.println("总页"+total);
		list = userService.findAll(pageNow,pageSize);
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("pageNow", pageNow);
        request.setAttribute("totalPage", total);// 把总数放入request域中	
		return "findAllSuccess"; 	
	}

	
}
