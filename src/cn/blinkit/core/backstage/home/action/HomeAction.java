package cn.blinkit.core.backstage.home.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;

import cn.blinkit.core.backstage.admin.entity.Admin;
import cn.blinkit.core.backstage.admin.service.AdminService;

import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport {
	
	@Resource
	private AdminService adminService;
	
	private Admin admin;
	private List<Admin> adminList;
	private String loginResult;
	
	// 跳转到登录页面
	public String loginUI(){
		return "loginUI";
	}
	
	// 登录
	public String login(){
		if(admin != null){
			if(StringUtils.isNotBlank(admin.getAdministrator()) && StringUtils.isNotBlank(admin.getAdminPwd())){
				//根据用户的帐号和密码查询用户列表
				List<Admin> list = adminService.findAdminsByAcccountAndPass(admin.getAdministrator(), admin.getAdminPwd());
				if(list != null && list.size() > 0){//说明登录成功
					//2.1、登录成功
					Admin admin = list.get(0);
					//2.1.2、将用户信息保存到session中
					ServletActionContext.getRequest().getSession().setAttribute("currentAdmin", admin);
					//2.1.3、将用户登录记录到日志文件
					Log log = LogFactory.getLog(getClass());
					log.info("用户名称为：" + admin.getAdminName() + " 的用户登录了系统。");
					//2.1.4、重定向跳转到首页
					return "loginToHome";
				} else {//登录失败
					loginResult = "管理员帐号或密码不正确！";
				}
			} else {
				loginResult = "管理员帐号或密码不能为空！";
			}
		} else {
			loginResult = "请输入管理员帐号和密码！";
		}
		return loginUI();
	}
	
	// 跳转到后台管理的首页
	public String mainUI() {
		return "mainUI";
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public List<Admin> getAdminList() {
		return adminList;
	}

	public void setAdminList(List<Admin> adminList) {
		this.adminList = adminList;
	}

	public String getLoginResult() {
		return loginResult;
	}

	public void setLoginResult(String loginResult) {
		this.loginResult = loginResult;
	}
	
}
