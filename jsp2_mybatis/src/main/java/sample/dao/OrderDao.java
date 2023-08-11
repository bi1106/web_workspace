package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mybatis.SqlSessionBean;
import sample.dto.OrderDto;

public class OrderDao {
	private static OrderDao dao = new OrderDao();
	private OrderDao() {}
	public static OrderDao getOrderDao() {
		return dao;
	}
	// SqlSession 의 메소드 selectList, insert 의 첫 번째 인자는 mapper xml의 sql id와 동일하게 합니다.
	//											두 번째 인자는 전달할 파라미터.
	public List<String> selectOrderByEmail() throws SQLException{
		SqlSession mapper = SqlSessionBean.getSession();
		List<String> list = mapper.selectList("selectOrderByEmail");
		mapper.close();
	      return list;
	}
	
	public int insert(OrderDto order) throws SQLException {
		SqlSession mapper = SqlSessionBean.getSession();
		int count = mapper.insert("insert",order);
		// insert, update, delete 는 commit 명령이 필요합니다.(mybatis는 autocommit이 아닙니다.)
		mapper.commit();
		mapper.close();
		return count;
	}
	
	public List<OrderDto> selectByEmail(String email) throws SQLException{
		SqlSession mapper = SqlSessionBean.getSession();
		List<OrderDto> list = mapper.selectList("selectByEmail",email);
		mapper.close();
		return list;
		
	}

}
