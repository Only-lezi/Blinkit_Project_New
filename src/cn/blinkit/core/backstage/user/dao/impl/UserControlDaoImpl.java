package cn.blinkit.core.backstage.user.dao.impl;

import java.util.List;

import org.hibernate.Query;

import cn.blinkit.base.dao.impl.BaseDaoImpl;
import cn.blinkit.core.backstage.user.dao.UserControlDao;
import cn.blinkit.core.backstage.user.entity.UserControl;

public class UserControlDaoImpl extends BaseDaoImpl<UserControl> implements UserControlDao {

	@Override
	public List<UserControl> findUsersByAcccountAndPass(String account, String passWord) {
		Query query = getSession().createQuery("FROM UserControl WHERE account=? AND passWord=?");
		query.setParameter(0, account);
		query.setParameter(1, passWord);
		return query.list();
	}

	@Override
	public List<UserControl> findUserByAccount(String account) {
		Query query = getSession().createQuery("FROM UserControl WHERE account=?");
		query.setParameter(0, account);
		return query.list();
	}

	@Override
	public List<UserControl> findUserByNickName(String nickName) {
		Query query = getSession().createQuery("FROM UserControl WHERE nickName=?");
		query.setParameter(0, nickName);
		return query.list();
	}

}
