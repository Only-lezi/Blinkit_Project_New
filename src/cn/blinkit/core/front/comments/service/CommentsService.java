package cn.blinkit.core.front.comments.service;

import java.io.Serializable;
import java.util.List;

import cn.blinkit.base.exception.ServiceException;
import cn.blinkit.base.service.BaseService;
import cn.blinkit.base.util.QueryHelper;
import cn.blinkit.core.front.comments.entity.Comments;

public interface CommentsService extends BaseService<Comments>{

	//新增评论
	public void save(Comments comments);
	//更新评论
	public void update(Comments comments);
	//根据commentsId删除
	public void delete(Serializable commentsId);
	//根据commentsId查找
	public Comments findObjectById(Serializable id);
	//根据nickName查找
	public Comments findObjectByNickName(Serializable nickName);
	//查找列表
	public List<Comments> findObjects();
	//条件查询实体列表--查询助手queryHelper
	public List<Comments> findObjects(QueryHelper queryHelper);

}
