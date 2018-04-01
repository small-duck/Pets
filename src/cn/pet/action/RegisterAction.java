package cn.pet.action;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.pet.service.RegisterService;
import cn.pet.vo.Register;

@Controller(value = "registerAction")
@Scope(value = "prototype")
public class RegisterAction extends ActionSupport implements ModelDriven<Register> {
	@Resource(name = "registerService")
	private RegisterService registerService;
	private Register register = new Register();

	@Override
	public Register getModel() {
		return register;
	}

	/**
	 * �����û�����ѯ
	 * 
	 */
	public String checkName() {
		Register existRegister = registerService.findByName(register.getUsername());
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		try {
			PrintWriter writer = response.getWriter();
			if (existRegister != null) {
				writer.print("no");
			} else {
				writer.print("yes");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		return NONE;
	}

	/**
	 * �������� ��ѯ
	 */
	public String checkEmail() {
		Register eRegister = registerService.findByEmail(register.getEmail());
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		try {
			PrintWriter writer = response.getWriter();
			if (eRegister != null) {
				writer.print("no");
			} else {
				writer.print("yes");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return NONE;
	}

	/**
	 * ������֤��
	 */
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
//	public String image() throws IOException {
//		/*
//		 * 1. ������֤����
//		 */
//		VerifyCode vc = new VerifyCode();
//		/*
//		 * 2. �õ���֤��ͼƬ
//		 */
//		BufferedImage image = vc.getImage();
//		/*
//		 * 3. ��ͼƬ�ϵ��ı����浽session��
//		 */
//	/*	HttpServletRequest request = ServletActionContext.getRequest();
//		HttpServletResponse response = ServletActionContext.getResponse();*/
//		request.getSession().setAttribute("session_vcode", vc.getText());
//		/*
//		 * 4. ��ͼƬ��Ӧ���ͻ���
//		 */
//		VerifyCode.output(image, response.getOutputStream());
//		return NONE;
//
//	}
	/**
	 * У����֤��
	 */
	public String checkImage() {
	
		String img = request.getParameter("image");
		String imgs = (String) request.getSession().getAttribute("session_vcode");
		try {
			PrintWriter writer = response.getWriter();
			if (img.equals(imgs)) {
				writer.print("yes");
			}else {
				writer.print("no");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return NONE;
	}
	/**
	 * �û�ע��
	 * 
	 */
	public String regist(){
		registerService.save(register);
		return "saveS";
	}
	/**
	 * �û���¼
	 */
	public String login(){
		Register uRegister = registerService.login(register.getEmail(),register.getPassword());
		if (uRegister != null) {
			request.getSession().setAttribute("uRegister", uRegister);
			return "loginS";
		}else{
			return "login";
		}
	
	}
	/**
	 * ������ϸ���濴��ϵ��ʽ��¼
	 */
	public String login2(){
		Register uRegister = registerService.login(register.getEmail(),register.getPassword());
		if (uRegister != null) {
			request.getSession().setAttribute("uRegister", uRegister);
			return "loginS2";
		}else{
			return "login";
		}
	
	}
	public String login3(){
		Register uRegister = registerService.login(register.getEmail(),register.getPassword());
		if (uRegister != null) {
			request.getSession().setAttribute("uRegister", uRegister);
			return "loginS3";
		}else{
			return "login";
		}
		
	}
	/**
	 * �û��˳�
	 */
	public String exit() {
		ServletActionContext.getRequest().getSession().removeAttribute("uRegister");
		return LOGIN;
	}
}



















