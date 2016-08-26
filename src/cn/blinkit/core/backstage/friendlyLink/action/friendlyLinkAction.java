package cn.blinkit.core.backstage.friendlyLink.action;

import java.util.List;

import javax.annotation.Resource;

import cn.blinkit.base.action.BaseAction;
import cn.blinkit.core.backstage.user.entity.UserControl;
import cn.blinkit.core.backstage.user.service.UserControlService;

public class friendlyLinkAction extends BaseAction {
	
	@Resource
	private UserControlService userControlService;
	private List<UserControl> userContorlList;
	private UserControl userControl;
	private String[] selectedRow;

	//列表页面
	public String listUI() {
		userContorlList = userControlService.findObjects();
		return "listUI";
	}
	//跳转到新增用户页面
	public String addUI(){
		return "addUI";
	}
	
	//保存新增
	public String add(){
		if (userControl != null) {
			userControlService.save(userControl);
		}
		return "list";
	}
	
	// 跳转到编辑页面
	public String editUI() {
		if (userControl != null && userControl.getUserId() != null) {
			userControl = userControlService.findObjectById(userControl.getUserId());
		}
		return "editUI";
	}
	
	// 保存编辑
	public String edit() {
		if (userControl != null) {
			userControlService.update(userControl);
		}
		return "list";
	}
	// 删除
	public String delete() {
		if (userControl != null && userControl.getUserId() != null) {
			userControlService.delete(userControl.getUserId());
		}
		return "list";
	}
	// 批量删除
	public String deleteSelected() {
		if (selectedRow != null) {
			for (String id : selectedRow) {
				userControlService.delete(id);
			}
		}
		return "list";
	}
	public List<UserControl> getUserContorlList() {
		return userContorlList;
	}
	public void setUserContorlList(List<UserControl> userContorlList) {
		this.userContorlList = userContorlList;
	}
	public UserControl getUserControl() {
		return userControl;
	}
	public void setUserControl(UserControl userControl) {
		this.userControl = userControl;
	}
	public String[] getSelectedRow() {
		return selectedRow;
	}
	public void setSelectedRow(String[] selectedRow) {
		this.selectedRow = selectedRow;
	}

}
