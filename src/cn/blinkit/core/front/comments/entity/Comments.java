package cn.blinkit.core.front.comments.entity;

import java.io.Serializable;
import java.util.Date;

public class Comments implements Serializable {
	private int commentsId;
	private Date commentsTime;		// 评论时间
	private String nickName;		// 昵称
	private String userEmail;		// 邮箱
	private String personalPage;	// 个人主页
	private String leaveMessages;	// 留言
	
	public Comments() {
	}

	public Comments(int commentsId, Date commentsTime, String nickName,
			String userEmail, String personalPage, String leaveMessages) {
		super();
		this.commentsId = commentsId;
		this.commentsTime = commentsTime;
		this.nickName = nickName;
		this.userEmail = userEmail;
		this.personalPage = personalPage;
		this.leaveMessages = leaveMessages;
	}

	public int getCommentsId() {
		return commentsId;
	}

	public void setCommentsId(int commentsId) {
		this.commentsId = commentsId;
	}

	public Date getCommentsTime() {
		return commentsTime;
	}

	public void setCommentsTime(Date commentsTime) {
		this.commentsTime = commentsTime;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getPersonalPage() {
		return personalPage;
	}

	public void setPersonalPage(String personalPage) {
		this.personalPage = personalPage;
	}

	public String getLeaveMessages() {
		return leaveMessages;
	}

	public void setLeaveMessages(String leaveMessages) {
		this.leaveMessages = leaveMessages;
	}

}
