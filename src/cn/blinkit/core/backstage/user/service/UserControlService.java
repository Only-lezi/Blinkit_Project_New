package cn.blinkit.core.backstage.user.service;

import java.io.Serializable;
import java.util.List;

import cn.blinkit.core.backstage.user.entity.UserControl;

public interface UserControlService {

	//新增
	public void save(UserControl userControl);
	//更新
	public void update(UserControl userControl);
	//根据id删除
	public void delete(Serializable id);
	//根据id查找
	public UserControl findObjectById(Serializable id);
	//查找列表
	public List<UserControl> findObjects();
	/**
	 * 根据帐号和用户id查询用户
	 * @param account 用户帐号
	 * @param id 用户ID
	 * @return 用户列表
	 */
	public List<UserControl> findUserByAccount(String account);
	
	public List<UserControl> findUserByNickName(String nickName);
	
	//根据用户的帐号和密码查询用户列表
	public List<UserControl> findUserByAccountAndPass(String account, String passWord);

}
