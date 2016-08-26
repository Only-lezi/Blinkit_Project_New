package cn.blinkit.core.front.comments.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.blinkit.base.exception.ServiceException;
import cn.blinkit.base.page.PageResult;
import cn.blinkit.base.service.impl.BaseServiceImpl;
import cn.blinkit.base.util.QueryHelper;
import cn.blinkit.core.front.comments.dao.CommentsDao;
import cn.blinkit.core.front.comments.entity.Comments;
import cn.blinkit.core.front.comments.service.CommentsService;

@Service("commentsService")
public class CommentsServiceImpl extends BaseServiceImpl<Comments> implements CommentsService {
	
	@Resource 
	private CommentsDao commentsDao;

	@Override
	public void save(Comments comments) {
		commentsDao.save(comments);
	}

	@Override
	public void update(Comments comments) {
		commentsDao.update(comments);
	}

	@Override
	public void delete(Serializable commentsId) {
		commentsDao.delete(commentsId);
	}

	
	@Override
	public Comments findObjectById(Serializable id) {
		return commentsDao.findObjectById(id);
	}

	@Override
	public Comments findObjectByNickName(Serializable nickName) {
		return null;
	}

	@Override
	public List<Comments> findObjects() {
		return commentsDao.findObjects();
	}

	@Override
	public List<Comments> findObjects(QueryHelper queryHelper) {
		return commentsDao.findObjects(queryHelper);
	}

	@Override
	public PageResult getPageResult(QueryHelper queryHelper, int pageNo,
			int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
