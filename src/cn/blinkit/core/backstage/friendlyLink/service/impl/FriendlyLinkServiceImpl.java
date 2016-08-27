package cn.blinkit.core.backstage.friendlyLink.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.blinkit.base.service.impl.BaseServiceImpl;
import cn.blinkit.core.backstage.friendlyLink.dao.FriendlyLinkDao;
import cn.blinkit.core.backstage.friendlyLink.entity.FriendlyLink;
import cn.blinkit.core.backstage.friendlyLink.service.FriendlyLinkService;

@Service("friendlyLinkService")
public class FriendlyLinkServiceImpl extends BaseServiceImpl<FriendlyLink> implements FriendlyLinkService {
	
	@Resource 
	private FriendlyLinkDao friendlyLinkDao;

	@Override
	public void save(FriendlyLink friendlyLink) {
		friendlyLinkDao.save(friendlyLink);
	}

	@Override
	public void update(FriendlyLink friendlyLink) {
		friendlyLinkDao.update(friendlyLink);
	}

	@Override
	public void delete(Serializable id) {
		friendlyLinkDao.delete(id);
	}

	@Override
	public FriendlyLink findObjectById(Serializable id) {
		return friendlyLinkDao.findObjectById(id);
	}

	@Override
	public List<FriendlyLink> findObjects()  {
		return friendlyLinkDao.findObjects();
	}

}
