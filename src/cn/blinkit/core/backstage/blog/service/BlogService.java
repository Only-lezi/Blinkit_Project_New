package cn.blinkit.core.backstage.blog.service;

import java.io.Serializable;
import java.util.List;

import cn.blinkit.core.backstage.blog.entity.Blog;

public interface BlogService {

	//新增
	public void save(Blog blog);
	//更新
	public void update(Blog blog);
	//根据id删除
	public void delete(Serializable id);
	//根据id查找
	public Blog findObjectById(Serializable id);
	//查找列表
	public List<Blog> findObjects();
	

}
