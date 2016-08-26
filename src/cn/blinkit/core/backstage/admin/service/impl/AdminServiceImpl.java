package cn.blinkit.core.backstage.admin.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.blinkit.base.page.PageResult;
import cn.blinkit.base.service.impl.BaseServiceImpl;
import cn.blinkit.base.util.QueryHelper;
import cn.blinkit.core.backstage.admin.dao.AdminDao;
import cn.blinkit.core.backstage.admin.entity.Admin;
import cn.blinkit.core.backstage.admin.service.AdminService;

@Service("adminService")
public class AdminServiceImpl extends BaseServiceImpl<Admin> implements AdminService {

	@Resource 
	private AdminDao adminDao;
	
	@Override
	public void save(Admin admin) {
		adminDao.save(admin);
	}

	@Override
	public void update(Admin admin) {
		adminDao.update(admin);
	}

	@Override
	public void delete(Serializable id) {
		adminDao.delete(id);
	}

	@Override
	public Admin findObjectById(Serializable id) {
		return adminDao.findObjectById(id);
	}

	@Override
	public List<Admin> findObjects() {
		return adminDao.findObjects();
	}

	@Override
	public List<Admin> findObjects(String hql, List<Object> parameters) {
		return adminDao.findObjects(hql, parameters);
	}

	@Override
	public List<Admin> findObjects(QueryHelper queryHelper) {
		return adminDao.findObjects(queryHelper);
	}

	@Override
	public PageResult getPageResult(QueryHelper queryHelper, int pageNo, int pageSize) {
		return adminDao.getPageResult(queryHelper, pageNo, pageSize);
	}

	@Override
	public List<Admin> findAdminsByAcccountAndPass(String administrator, String adminPwd) {
		return adminDao.findAdminsByAcccountAndPass(administrator, adminPwd);
	}

}
