package cn.blinkit.core.backstage.friendlyLink.action;

import java.util.List;

import javax.annotation.Resource;

import cn.blinkit.base.action.BaseAction;
import cn.blinkit.core.backstage.friendlyLink.entity.FriendlyLink;
import cn.blinkit.core.backstage.friendlyLink.service.FriendlyLinkService;

public class friendlyLinkAction extends BaseAction {
	
	@Resource
	private FriendlyLinkService friendlyLinkService;
	private List<FriendlyLink> friendlyLinkList;
	private FriendlyLink friendlyLink;
	private String[] selectedRow;
	
	public String showList() {
		friendlyLinkList = friendlyLinkService.findObjects();
		return "showList";
	}

	//列表页面
	public String listUI() {
		friendlyLinkList = friendlyLinkService.findObjects();
		return "listUI";
	}
	//跳转到新增用户页面
	public String addUI(){
		return "addUI";
	}
	
	//保存新增
	public String add(){
		if (friendlyLink != null) {
			friendlyLinkService.save(friendlyLink);
		}
		return "list";
	}
	
	// 跳转到编辑页面
	public String editUI() {
		if (friendlyLink != null) {
			friendlyLink = friendlyLinkService.findObjectById(friendlyLink.getLinkId());
		}
		return "editUI";
	}
	
	// 保存编辑
	public String edit() {
		if (friendlyLink != null) {
			friendlyLinkService.update(friendlyLink);
		}
		return "list";
	}
	// 删除
	public String delete() {
		if (friendlyLink != null) {
			friendlyLinkService.delete(friendlyLink.getLinkId());
		}
		return "list";
	}
	// 批量删除
	public String deleteSelected() {
		if (selectedRow != null) {
			for (String id : selectedRow) {
				friendlyLinkService.delete(id);
			}
		}
		return "list";
	}
	public FriendlyLinkService getFriendlyLinkService() {
		return friendlyLinkService;
	}
	public void setFriendlyLinkService(FriendlyLinkService friendlyLinkService) {
		this.friendlyLinkService = friendlyLinkService;
	}
	public List<FriendlyLink> getFriendlyLinkList() {
		return friendlyLinkList;
	}
	public void setFriendlyLinkList(List<FriendlyLink> friendlyLinkList) {
		this.friendlyLinkList = friendlyLinkList;
	}
	public FriendlyLink getFriendlyLink() {
		return friendlyLink;
	}
	public void setFriendlyLink(FriendlyLink friendlyLink) {
		this.friendlyLink = friendlyLink;
	}
}
