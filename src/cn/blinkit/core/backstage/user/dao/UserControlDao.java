package cn.blinkit.core.backstage.user.dao;

import java.util.List;

import cn.blinkit.base.dao.BaseDao;
import cn.blinkit.core.backstage.user.entity.UserControl;

public interface UserControlDao extends BaseDao<UserControl> {

	/**
	 * 根据用户id和帐号查询用户
	 * @param id 用户ID
	 * @param account 用户帐号
	 * @return 用户列表
	 */
	public List<UserControl> findUserByAccount(String account);
	
	public List<UserControl> findUserByNickName(String nickName);

	public List<UserControl> findUsersByAcccountAndPass(String account, String passWord);

}
