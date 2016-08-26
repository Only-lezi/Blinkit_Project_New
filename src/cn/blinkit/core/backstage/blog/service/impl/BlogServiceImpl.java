package cn.blinkit.core.backstage.blog.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.blinkit.core.backstage.blog.dao.BlogDao;
import cn.blinkit.core.backstage.blog.entity.Blog;
import cn.blinkit.core.backstage.blog.service.BlogService;

@Service("blogService")
public class BlogServiceImpl implements BlogService {
	
	@Resource 
	private BlogDao blogDao;

	@Override
	public void save(Blog blog) {
		blogDao.save(blog);
	}

	@Override
	public void update(Blog blog) {
		blogDao.update(blog);
	}

	@Override
	public void delete(Serializable id) {
		blogDao.delete(id);
	}

	@Override
	public Blog findObjectById(Serializable id) {
		return blogDao.findObjectById(id);
	}

	@Override
	public List<Blog> findObjects()  {
		return blogDao.findObjects();
	}

}
