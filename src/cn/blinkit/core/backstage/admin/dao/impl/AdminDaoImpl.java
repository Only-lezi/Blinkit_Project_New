package cn.blinkit.core.backstage.admin.dao.impl;

import java.util.List;

import org.hibernate.Query;

import cn.blinkit.base.dao.impl.BaseDaoImpl;
import cn.blinkit.core.backstage.admin.dao.AdminDao;
import cn.blinkit.core.backstage.admin.entity.Admin;

public class AdminDaoImpl extends BaseDaoImpl<Admin> implements AdminDao {

	@Override
	public List<Admin> findAdminsByAcccountAndPass(String administrator, String adminPwd) {
		Query query = getSession().createQuery("FROM Admin WHERE administrator=? AND adminPwd=?");
		query.setParameter(0, administrator);
		query.setParameter(1, adminPwd);
		return query.list();
	}

}
