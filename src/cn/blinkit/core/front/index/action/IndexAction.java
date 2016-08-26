package cn.blinkit.core.front.index.action;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import cn.blinkit.base.util.VerifyCode;
import cn.blinkit.core.backstage.user.entity.UserControl;
import cn.blinkit.core.backstage.user.service.UserControlService;

public class IndexAction extends ActionSupport {
	
	// 创建response、request实例
	HttpServletResponse response = ServletActionContext.getResponse();
	HttpServletRequest request = ServletActionContext.getRequest();
	
	@Resource
	private UserControlService userControlService;
	
	private UserControl userControl;
	private String loginResult;

	// 跳转到首页
	public String index() {
		return "index";
	}
	
	// 跳转到关于我们页面
	public String about() {
		return "about";
	}
	
	// 跳转到留言板页面
	public String comments() {
		return "comments";
	}
	
	// 跳转到MarkDown页面
	public String markdownUI() {
		return "markdownUI";
	}
	
	// 跳转到登录页面
	public String loginUI(){
		return "loginUI";
	}
	
	/**
	 * 系统登陆
	 * 1.如果没输入账户、密码跳转回登陆页面，并提示
	 * 2.如果账户、密码输入错误，跳转回登陆页面，并提示
	 * 如果登陆成功会保存session，然后跳转到系统首页
	 */
	public String login(){
		if(userControl != null){
			if(StringUtils.isNotBlank(userControl.getAccount()) && StringUtils.isNotBlank(userControl.getPassWord())){
				//根据用户的帐号和密码查询用户列表
				List<UserControl> list = userControlService.findUserByAccountAndPass(userControl.getAccount(), userControl.getPassWord());
				if(list != null && list.size() > 0){//说明登录成功
					//2.1、登录成功
					UserControl userControl = list.get(0);
					//2.1.1、根据用户id查询该用户的所有角色
					/*userControl.setuserControlRoles(userControlService.getuserControlRolesByuserControlId(userControl.getId()));*/
					//2.1.2、将用户信息保存到session中
					ServletActionContext.getRequest().getSession().setAttribute("currentUser", userControl);
					//2.1.3、将用户登录记录到日志文件
					Log log = LogFactory.getLog(getClass());
					log.info("用户名称为：" + userControl.getNickName() + " 的用户登录了系统。");
					//2.1.4、重定向跳转到首页
					return "loginToIndex";
				} else {//登录失败
					loginResult = "帐号或密码不正确！";
				}
			} else {
				loginResult = "帐号或密码不能为空！";
			}
		} else {
			loginResult = "请输入帐号和密码！";
		}
		return loginUI();
	}
	
	// 跳转到注册页面
	public String registerUI() {
		return "registerUI";
	}
	
	// 注册逻辑，如果注册成功返回true
	public void register() {
		try {
			if (userControl != null) {
				userControl.setState("1");
				userControlService.save(userControl);
				String strResult = "true";
				
				//输出
				HttpServletResponse response = ServletActionContext.getResponse();
				response.setContentType("text/html");
				ServletOutputStream outputStream = response.getOutputStream();
				outputStream.write(strResult.getBytes());
				outputStream.close();
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 校验昵称是否唯一
	public void verifyNickName() {
		try {
			//1、获取帐号
			if(userControl != null && StringUtils.isNotBlank(userControl.getNickName())){
				//2、根据昵称数据库中校验是否存在相同昵称的用户
				List<UserControl> list = userControlService.findUserByNickName(userControl.getNickName());
				String strResult = "true";
				if(list != null && list.size() > 0){
					//说明该昵称已经存在
					strResult = "false";
				}
				
				//输出
				HttpServletResponse response = ServletActionContext.getResponse();
				response.setContentType("text/html");
				ServletOutputStream outputStream = response.getOutputStream();
				outputStream.write(strResult.getBytes());
				outputStream.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 校验账号Account是否存在
	 */
	public void verifyAccount() {
		try {
			//1、获取帐号
			if(userControl != null && StringUtils.isNotBlank(userControl.getAccount())){
				//2、根据帐号到数据库中校验是否存在该帐号对应的用户
				List<UserControl> list = userControlService.findUserByAccount(userControl.getAccount());
				String strResult = "true";
				if(list != null && list.size() > 0){
					//说明该帐号已经存在
					strResult = "false";
				}
				
				//输出
				HttpServletResponse response = ServletActionContext.getResponse();
				response.setContentType("text/html");
				ServletOutputStream outputStream = response.getOutputStream();
				outputStream.write(strResult.getBytes());
				outputStream.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 获取图片验证码，并保存验证码的码值为session
	 */
	public void changeCode() {
		try {
			VerifyCode vc = new VerifyCode();
			BufferedImage img = vc.getImage();	// 获取验证码的图片
			VerifyCode.saveImage(img, response.getOutputStream());
			request.getSession().setAttribute("currentCode", vc.getVCode());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 校验验证码，如果成功会返回打印success到页面
	 */
	public void verifyCode() {
		try {
			String currentCode = (String) request.getSession().getAttribute("currentCode");
			String inputCode = request.getParameter("vCode");
			
			String strResult = "failure";
			if (inputCode.equalsIgnoreCase(currentCode)) {
				strResult = "success";
			}
			
			//输出
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html");
			ServletOutputStream outputStream = response.getOutputStream();
			outputStream.write(strResult.getBytes());
			outputStream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/*//退出，注销
	public String logout(){
		//清除session中保存的用户信息
		ServletActionContext.getRequest().getSession().removeAttribute(Constant.USER);
		return toLoginUI();
	}
	//跳转到没有权限提示页面
	public String toNoPermissionUI(){
		return "noPermissionUI";
	}
	

	public String getLoginResult() {
		return loginResult;
	}

	public void setLoginResult(String loginResult) {
		this.loginResult = loginResult;
	}*/

	public UserControl getUserControl() {
		return userControl;
	}

	public void setUserControl(UserControl userControl) {
		this.userControl = userControl;
	}

	public String getLoginResult() {
		return loginResult;
	}

	public void setLoginResult(String loginResult) {
		this.loginResult = loginResult;
	}

}
