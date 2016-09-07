package cn.blinkit.core.backstage.admin.action;

import java.util.List;

import javax.annotation.Resource;

import cn.blinkit.core.backstage.admin.entity.Admin;
import cn.blinkit.core.backstage.admin.service.AdminService;

import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport {
	
	@Resource
	private AdminService adminService;
	
	private Admin admin;
	private List<Admin> adminList;
	private String loginResult;
	private String[] selectedRow;
	
	public String listUI() {
		/*try {
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}	*/
		adminList = adminService.findObjects();
		return "listUI";
	}
	
	//跳转到新增用户页面
	public String addUI(){
		return "addUI";
	}
	
	//保存新增
	public String add(){
		if (admin != null) {
			adminService.save(admin);
		}
		return "list";
	}
	
	// 跳转到编辑页面
	public String editUI() {
		if (admin != null && admin.getAdminId() != null) {
			admin = adminService.findObjectById(admin.getAdminId());
		}
		return "editUI";
	}
	
	// 保存编辑
	public String edit() {
		if (admin != null) {
			adminService.update(admin);
		}
		return "list";
	}
	// 删除
	public String delete() {
		if (admin != null && admin.getAdminId() != null) {
			adminService.delete(admin.getAdminId());
		}
		return "list";
	}
	// 批量删除
	public String deleteSelected() {
		if (selectedRow != null) {
			for (String id : selectedRow) {
				adminService.delete(id);
			}
		}
		return "list";
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

	public String[] getSelectedRow() {
		return selectedRow;
	}

	public void setSelectedRow(String[] selectedRow) {
		this.selectedRow = selectedRow;
	}
	
}
