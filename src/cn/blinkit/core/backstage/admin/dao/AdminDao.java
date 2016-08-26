package cn.blinkit.core.backstage.admin.dao;

import java.util.List;

import cn.blinkit.base.dao.BaseDao;
import cn.blinkit.core.backstage.admin.entity.Admin;

public interface AdminDao extends BaseDao<Admin> {
	
	public List<Admin> findAdminsByAcccountAndPass(String administrator, String adminPwd);
}
