package cn.blinkit.core.backstage.admin.service;

import java.io.Serializable;
import java.util.List;

import cn.blinkit.base.service.BaseService;
import cn.blinkit.core.backstage.admin.entity.Admin;

public interface AdminService extends BaseService<Admin> {
	//新增
	public void save(Admin admin);
	//更新
	public void update(Admin admin);
	//根据id删除
	public void delete(Serializable id);
	//根据id查找
	public Admin findObjectById(Serializable id);
	//查找列表
	public List<Admin> findObjects();
	
	public List<Admin> findAdminsByAcccountAndPass(String administrator, String adminPwd);
}
