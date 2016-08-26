package cn.blinkit.core.backstage.blog.entity;

import java.io.Serializable;

public class Blog implements Serializable {
	/**
	 * 博客，采用ueditor富文本编辑器
	 * Author：Only-lezi
	 * Date：2016-08-15
	 */
	
	private String blogId;	  // id(32位UUID唯一值)
	private String blogName;  // 博文名称
	private String blogAuthor;   // 博文作者
	private String blogExplain;  // 博文说明 ,博文描述（简短描述，用于首页展示）
	private String blogImg;	  // 博文图片（用于首页展示）
	private String blogType;  // 博文分类
	private String blogLabel; // 博文标签
	private String blogDate;  // 博文发表日期
	private String blogState;	  // 博文的状态
	
	private String blogContent;  // 博文内容
	
	
	// 博文状态
	public static String BLOG_STATE_VALID = "1";//有效
	public static String BLOG_STATE_INVALID = "0";//无效
	
	public Blog() {
	}

	public Blog(String blogId, String blogName, String blogAuthor,
			String blogExplain, String blogType, String blogLabel,
			String blogDate, String blogDesc, String blogContent,
			String blogImg, String blogState) {
		this.blogId = blogId;
		this.blogName = blogName;
		this.blogAuthor = blogAuthor;
		this.blogExplain = blogExplain;
		this.blogType = blogType;
		this.blogLabel = blogLabel;
		this.blogDate = blogDate;
		this.blogContent = blogContent;
		this.blogImg = blogImg;
		this.blogState = blogState;
	}

	public String getBlogId() {
		return blogId;
	}

	public void setBlogId(String blogId) {
		this.blogId = blogId;
	}

	public String getBlogName() {
		return blogName;
	}

	public void setBlogName(String blogName) {
		this.blogName = blogName;
	}

	public String getBlogAuthor() {
		return blogAuthor;
	}

	public void setBlogAuthor(String blogAuthor) {
		this.blogAuthor = blogAuthor;
	}

	public String getBlogExplain() {
		return blogExplain;
	}

	public void setBlogExplain(String blogExplain) {
		this.blogExplain = blogExplain;
	}

	public String getBlogType() {
		return blogType;
	}

	public void setBlogType(String blogType) {
		this.blogType = blogType;
	}

	public String getBlogLabel() {
		return blogLabel;
	}

	public void setBlogLabel(String blogLabel) {
		this.blogLabel = blogLabel;
	}

	public String getBlogDate() {
		return blogDate;
	}

	public void setBlogDate(String blogDate) {
		this.blogDate = blogDate;
	}

	public String getBlogContent() {
		return blogContent;
	}

	public void setBlogContent(String blogContent) {
		this.blogContent = blogContent;
	}

	public String getBlogImg() {
		return blogImg;
	}

	public void setBlogImg(String blogImg) {
		this.blogImg = blogImg;
	}

	public String getBlogState() {
		return blogState;
	}

	public void setBlogState(String blogState) {
		this.blogState = blogState;
	}

}
