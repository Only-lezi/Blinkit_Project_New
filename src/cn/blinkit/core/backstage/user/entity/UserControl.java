package cn.blinkit.core.backstage.user.entity;

import java.io.Serializable;
import java.util.Date;

public class UserControl implements Serializable {
	
	private String userId;		  // id(32位UUID唯一值)
	private String account;   // 账户(号)
	private String nickName;  // 用户名(昵称)
	private String passWord;  // 密码(登录)
	
	private String userEmail; // 用户的电子邮箱
	private String userPhone; // 用户手机号码
	private Date birthday;	  // 生日
	private String userDesc;  // 用户自我介绍
	private String headImg;	  // 头像
	
	private String state;	  // 用户的状态
	
	//用户状态
	public static String USER_STATE_VALID = "1";//有效
	public static String USER_STATE_INVALID = "0";//无效
	
	public UserControl() {
	}

	public UserControl(String userId, String account, String nickName, String passWord,
			String userEmail, String userPhone, Date birthday, String userDesc,
			String headImg, String state, Date dateModified) {
		this.userId = userId;
		this.account = account;
		this.nickName = nickName;
		this.passWord = passWord;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.birthday = birthday;
		this.userDesc = userDesc;
		this.headImg = headImg;
		this.state = state;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}


	public String getPassWord() {
		return passWord;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getUserDesc() {
		return userDesc;
	}

	public void setUserDesc(String userDesc) {
		this.userDesc = userDesc;
	}

	public String getHeadImg() {
		return headImg;
	}

	public void setHeadImg(String headImg) {
		this.headImg = headImg;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

}
