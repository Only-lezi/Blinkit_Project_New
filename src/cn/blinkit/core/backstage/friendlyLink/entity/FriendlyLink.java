package cn.blinkit.core.backstage.friendlyLink.entity;

import java.io.Serializable;

public class FriendlyLink implements Serializable {
	
	private int linkId;	// 友情链接id
	private String linkName;  // 网站名称
	private String linkURL;   // 网站链接
	private String linkTitle;  // 网站介绍
	
	public FriendlyLink() {
	}

	public FriendlyLink(int linkId, String linkName, String linkURL, String linkTitle) {
		this.linkId = linkId;
		this.linkName = linkName;
		this.linkURL = linkURL;
		this.linkTitle = linkTitle;
	}

	public int getLinkId() {
		return linkId;
	}

	public void setLinkId(int linkId) {
		this.linkId = linkId;
	}

	public String getLinkName() {
		return linkName;
	}

	public void setLinkName(String linkName) {
		this.linkName = linkName;
	}

	public String getLinkURL() {
		return linkURL;
	}

	public void setLinkURL(String linkURL) {
		this.linkURL = linkURL;
	}

	public String getLinkTitle() {
		return linkTitle;
	}

	public void setLinkTitle(String linkTitle) {
		this.linkTitle = linkTitle;
	}
}
