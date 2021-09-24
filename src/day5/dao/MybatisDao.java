package day5.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import day3.dto.Customer;
import day5.mybatis.SqlSessionBean;

public class MybatisDao {
	private static MybatisDao dao = new MybatisDao();

	private MybatisDao() {
	}

	public static MybatisDao getInstance() {
		return dao;
	}

	SqlSessionFactory sqlFactory = SqlSessionBean.getSessionFactory();

	public List<Customer> selectAll() {
		List<Customer> list = null;
		SqlSession mapper = sqlFactory.openSession();
		list = mapper.selectList("selectAll");
		mapper.commit();
		mapper.close();
		return list;
	}

	public Customer selectOne(int idx) {
		Customer cus = null;
		SqlSession mapper = sqlFactory.openSession(true); // 오토커밋
		cus = mapper.selectOne("selectOne", idx);
		mapper.close();
		return cus;
	}

	public int insert(Customer cus) {
		SqlSession mapper = sqlFactory.openSession();
		int a = mapper.insert("insert", cus);
		mapper.commit();
		mapper.close();
		return a;
	}

	public int delete(int idx) {
		SqlSession mapper = sqlFactory.openSession();
		int result = mapper.delete("delete", idx);
		mapper.commit();
		mapper.close();
		return result;
	}

	public int update(Customer cus) {
		SqlSession mapper = sqlFactory.openSession();
		int result = mapper.update("update", cus);
		mapper.commit();
		mapper.close();
		return result;
	}

}
