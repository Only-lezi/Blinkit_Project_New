package cn.blinkit.core.backstage.blog.action;

import java.util.List;

import javax.annotation.Resource;

import cn.blinkit.base.action.BaseAction;
import cn.blinkit.core.backstage.blog.entity.Blog;
import cn.blinkit.core.backstage.blog.service.BlogService;

public class BlogAction extends BaseAction {
	
	@Resource
	private BlogService blogService;
	private List<Blog> blogList;
	private Blog blog;

	//列表页面
	public String listUI() {
		/*blogList = blogService.findObjects();*/
		return "listUI";
	}
	//跳转到新增用户页面
	public String addUI(){
		return "addUI";
	}
	
	//保存新增
	public String add(){
		if (blog != null) {
			blogService.save(blog);
		}
		return "list";
	}
	
	// 跳转到编辑页面
	public String editUI() {
		if (blog != null && blog.getBlogId() != null) {
			
			blog = blogService.findObjectById(blog.getBlogId());
		}
		return "editUI";
	}
	
	// 保存编辑
	public String edit() {
		if (blog != null) {
			blogService.update(blog);
		}
		return "list";
	}
	// 删除
	public String delete() {
		if (blog != null && blog.getBlogId() != null) {
			blogService.delete(blog.getBlogId());
		}
		return "list";
	}
	// 批量删除
	public String deleteSelected() {
		if (selectedRow != null) {
			for (String id : selectedRow) {
				blogService.delete(id);
			}
		}
		return "list";
	}

}
