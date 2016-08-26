package cn.blinkit.core.backstage.comControl.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import cn.blinkit.base.action.BaseAction;
import cn.blinkit.core.front.comments.entity.Comments;
import cn.blinkit.core.front.comments.service.CommentsService;

public class ComControlAction extends BaseAction {
	
	@Resource
	private CommentsService commentsService;
	private List<Comments> commentsList;
	private Comments comments;
	private String[] selectedRow;

	//列表页面
	public String listUI() {
		commentsList = commentsService.findObjects();
		return "listUI";
	}
	//跳转到新增用户页面
	public String addUI(){
		return "addUI";
	}
	
	//保存新增
	public String add(){
		if (comments != null) {
			Date currentDate = new Date();
			comments.setCommentsTime(currentDate);
			commentsService.save(comments);
		}
		return "list";
	}
	
	// 跳转到编辑页面
	public String editUI() {
		if (comments != null && comments.getCommentsId() != 0) {
			comments = commentsService.findObjectById(comments.getCommentsId());
		}
		return "editUI";
	}
	
	// 保存编辑
	public String edit() {
		if (comments != null) {
			commentsService.update(comments);
		}
		return "list";
	}
	// 删除
	public String delete() {
		if (comments != null && comments.getCommentsId() != 0) {
			commentsService.delete(comments.getCommentsId());
		}
		return "list";
	}
	// 批量删除
	public String deleteSelected() {
		if (selectedRow != null) {
			for (String id : selectedRow) {
				commentsService.delete(id);
			}
		}
		return "list";
	}
	
	public List<Comments> getCommentsList() {
		return commentsList;
	}
	public void setCommentsList(List<Comments> commentsList) {
		this.commentsList = commentsList;
	}
	public Comments getComments() {
		return comments;
	}
	public void setComments(Comments comments) {
		this.comments = comments;
	}
/*	public String[] getSelectedRow() {
		return selectedRow;
	}
	public void setSelectedRow(String[] selectedRow) {
		this.selectedRow = selectedRow;
	}
	*/
}
