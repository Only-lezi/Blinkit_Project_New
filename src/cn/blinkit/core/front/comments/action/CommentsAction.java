package cn.blinkit.core.front.comments.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import cn.blinkit.base.action.BaseAction;
import cn.blinkit.base.util.QueryHelper;
import cn.blinkit.core.front.comments.entity.Comments;
import cn.blinkit.core.front.comments.service.CommentsService;

public class CommentsAction extends BaseAction {
	
	@Resource
	private CommentsService commentsService;
	private List<Comments> commentsList;
	private Comments comments;

	//列表页面
	public String listUI() throws Exception {
		QueryHelper queryHelper = new QueryHelper(Comments.class, "c");
		try {
			queryHelper.addOrderByProperty("c.commentsTime", QueryHelper.ORDER_BY_DESC);
			commentsList = commentsService.findObjects(queryHelper);
			/*pageResult = commentsService.getPageResult(queryHelper, getPageNo(), getPageSize());*/
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}	
		return "listUI";
	}
	
	//保存新增
	public String add(){
		try {
			if(comments != null){
				Date currentDate = new Date();
				comments.setCommentsTime(currentDate);
				commentsService.save(comments);
			}
		} catch (Exception e) {
			e.printStackTrace();
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
	
}
