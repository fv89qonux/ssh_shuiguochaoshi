package com.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.Evaluates;
import com.model.TGoods;

public class EvaluatesDao extends HibernateDaoSupport{
	
	private static final Log log = LogFactory.getLog(EvaluatesDao.class);
	
	public void save(Evaluates transientInstance)
	{
		log.debug("saving Evaluates instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}
	
	public List findList(int goodsid)
	{
		log.debug("finding Evaluates instance by example");
		try
		{
			String queryString = "from Evaluates as model where model.goodsid = ?";
		return getHibernateTemplate().find(queryString, goodsid);
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}
}
