package cn.blinkit.core.backstage.admin.entity;

import java.io.Serializable;

public class Admin implements Serializable {
	private String adminId;
	private String administrator;
	private String adminPwd;
	private String adminName;
	
	public Admin() {
	}

	public Admin(String adminId, String administrator, String adminPwd, String adminName) {
		super();
		this.adminId = adminId;
		this.administrator = administrator;
		this.adminPwd = adminPwd;
		this.adminName = adminName;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getAdministrator() {
		return administrator;
	}

	public void setAdministrator(String administrator) {
		this.administrator = administrator;
	}

	public String getAdminPwd() {
		return adminPwd;
	}

	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	
}
