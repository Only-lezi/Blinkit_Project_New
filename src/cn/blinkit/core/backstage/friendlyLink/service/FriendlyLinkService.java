package cn.blinkit.core.backstage.friendlyLink.service;

import java.io.Serializable;
import java.util.List;

import cn.blinkit.core.backstage.friendlyLink.entity.FriendlyLink;

public interface FriendlyLinkService {

	//新增
	public void save(FriendlyLink friendlyLink);
	//更新
	public void update(FriendlyLink friendlyLink);
	//根据id删除
	public void delete(Serializable id);
	//根据id查找
	public FriendlyLink findObjectById(Serializable id);
	//查找列表
	public List<FriendlyLink> findObjects();

}
