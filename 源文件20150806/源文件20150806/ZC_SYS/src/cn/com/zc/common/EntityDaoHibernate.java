package cn.com.zc.common;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.util.Assert;

public class EntityDaoHibernate extends HibernateDaoSupport implements
		ApplicationContextAware {
	protected ApplicationContext applicationContext;

	public <T> List<T> getAll(Class<T> entityClass) {
		return getHibernateTemplate().loadAll(entityClass);
	}
	
	public List findByHql(String hql, Object[] values) {
		Assert.hasText(hql);

		String newHql = hql;
		int pos = 0;
		if (values != null) {
			for (int i = 0; i < values.length; ++i) {
				pos = newHql.indexOf(63, pos);
				if (pos == -1) {
					break;
				}

				if ((values[i] instanceof Collection) && (pos > -1)) {
					newHql = newHql.substring(0, pos) + ":queryParam" + i
							+ newHql.substring(pos + 1);
				}

				pos += 1;
			}
		}
		final String fnHql = newHql;
		final Object[] fValues = values;
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session) throws SQLException {
				Query query = session.createQuery(fnHql);
				if (fValues != null) {
					for (int i = 0; i < fValues.length; ++i) {
						if (fValues[i] instanceof Collection) {
							query.setParameterList("queryParam" + i,
									(Collection) fValues[i]);
						} else {
							query.setParameter(i, fValues[i]);
						}
					}
				}
				return query.list();
			}
		});
		return list;
	}
	
	public List findByHql(String hql, Object[] values,final int pageNo,final int pageSize) {
		Assert.hasText(hql);

		String newHql = hql;
		int pos = 0;
		if (values != null) {
			for (int i = 0; i < values.length; ++i) {
				pos = newHql.indexOf(63, pos);
				if (pos == -1) {
					break;
				}

				if ((values[i] instanceof Collection) && (pos > -1)) {
					newHql = newHql.substring(0, pos) + ":queryParam" + i
							+ newHql.substring(pos + 1);
				}

				pos += 1;
			}
		}
		final String fnHql = newHql;
		final Object[] fValues = values;
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session) throws SQLException {
				Query query = session.createQuery(fnHql);
				if (fValues != null) {
					for (int i = 0; i < fValues.length; ++i) {
						if (fValues[i] instanceof Collection) {
							query.setParameterList("queryParam" + i,
									(Collection) fValues[i]);
						} else {
							query.setParameter(i, fValues[i]);
						}
					}
				}
				query.setFirstResult((pageNo-1)*pageSize);
				query.setMaxResults(pageSize);
				return query.list();
			}
		});
		return list;
	}

	public void save(Object obj) {
		getHibernateTemplate().saveOrUpdate(obj);
	}

	public void update(Object obj) {
		getHibernateTemplate().update(obj);
	}

	public void saveAll(List list) {
		getHibernateTemplate().saveOrUpdateAll(list);
	}

	
	public void delete(Object obj) {
		getHibernateTemplate().delete(obj);
	}

	public <T> void deleteAll(List entityList) {
		getHibernateTemplate().deleteAll(entityList);
	}

	public void flush() {
		getHibernateTemplate().flush();
	}

	public void evict(Object obj) {
		getHibernateTemplate().evict(obj);
	}

	public void clear() {
		getHibernateTemplate().clear();
	}

	public <T> boolean exists(Class<T> entityClass, Serializable id) {
		Object entity = super.getHibernateTemplate().get(entityClass, id);

		return (entity != null);
	}

	public long getCount(String hql, Object[] values) {
		Assert.hasText(hql);

		String countQueryString = " select count (*) "
				+ removeSelect(removeOrders(hql));

		List countlist = getHibernateTemplate().find(countQueryString, values);
		long totalCount = ((Long) countlist.get(0)).longValue();

		return totalCount;
	}

	protected static String removeSelect(String hql) {
		Assert.hasText(hql);
		int beginPos = hql.toLowerCase().indexOf("from");
		Assert.isTrue(beginPos != -1, " hql : " + hql
				+ " must has a keyword 'from'");

		return hql.substring(beginPos);
	}

	protected static String removeOrders(String hql) {
		Assert.hasText(hql);
		Pattern p = Pattern.compile("order\\s*by[\\w|\\W|\\s|\\S]*", 2);

		Matcher m = p.matcher(hql);
		StringBuffer sb = new StringBuffer();
		while (m.find()) {
			m.appendReplacement(sb, "");
		}
		m.appendTail(sb);
		return sb.toString();
	}

	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		this.applicationContext = applicationContext;
	}
}
