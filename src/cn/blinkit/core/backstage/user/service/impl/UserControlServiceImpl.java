package cn.blinkit.core.backstage.user.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.blinkit.base.exception.ServiceException;
import cn.blinkit.base.service.impl.BaseServiceImpl;
import cn.blinkit.core.backstage.user.dao.UserControlDao;
import cn.blinkit.core.backstage.user.entity.UserControl;
import cn.blinkit.core.backstage.user.service.UserControlService;

@Service("userControlService")
public class UserControlServiceImpl extends BaseServiceImpl<UserControl> implements UserControlService {
	
	@Resource 
	private UserControlDao userControlDao;

	@Override
	public void save(UserControl userControl) {
		userControlDao.save(userControl);
	}

	@Override
	public void update(UserControl userControl) {
		userControlDao.update(userControl);
	}

	@Override
	public void delete(Serializable id) {
		userControlDao.delete(id);
	}

	@Override
	public UserControl findObjectById(Serializable id) {
		return userControlDao.findObjectById(id);
	}

	@Override
	public List<UserControl> findObjects()  {
		return userControlDao.findObjects();
	}

	@Override
	public List<UserControl> findUserByAccountAndPass(String account, String passWord) {
		return userControlDao.findUsersByAcccountAndPass(account, passWord);
	}

	@Override
	public List<UserControl> findUserByAccount(String account) {
		return userControlDao.findUserByAccount(account);
	}

	@Override
	public List<UserControl> findUserByNickName(String nickName) {
		return userControlDao.findUserByNickName(nickName);
	}

}
