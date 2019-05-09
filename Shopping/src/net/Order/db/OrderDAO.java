package net.Order.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class OrderDAO {

	Connection conn = null;
	PreparedStatement pt = null;
	ResultSet re = null;

	public OrderDAO() { // 디비 연결
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		} catch (Exception ex) {
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
	}

	// 디비에 주문 상품 등록하기
	public boolean insertOrder(OrderBean orderbean) throws SQLException {

		String sql = "insert into order values(sqe_code.nextval,?,?,?,?,?,?,?)";
		java.sql.Timestamp date = java.sql.Timestamp.valueOf(orderbean.getOrder_date());
		try {
			pt = conn.prepareStatement(sql);

			pt.setString(1, orderbean.getOrder_id());
			pt.setInt(2, orderbean.getOrder_code());
			pt.setString(3, orderbean.getOrder_date());
			pt.setString(4, orderbean.getOrder_result());
			pt.setInt(5, orderbean.getOrder_price());
			pt.setString(6, orderbean.getOrder_image());
			pt.setInt(7, orderbean.getOrder_count());
			pt.setTimestamp(8, date);

			pt.executeUpdate();

			return true;

		} catch (RuntimeException er) {
			er.printStackTrace();
		} finally {
			try {
				if (pt != null) {
					pt.close();
					pt = null;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	// 주문상품 리스트
	public List getListOrder() throws SQLException {
		String sql = "select * from order";
		List list = new ArrayList();

		try {
			pt = conn.prepareStatement(sql);
			re = pt.executeQuery();
			while (re.next()) {
				OrderBean orderbean = new OrderBean();
				orderbean.setOrder_id(re.getString("order_id"));
				orderbean.setOrder_code(re.getInt("order_code"));
				String date = String.valueOf(re.getTimestamp("order_date"));
				orderbean.setOrder_date(date);
				orderbean.setOrder_result(re.getString("order_result"));
				orderbean.setOrder_price(re.getInt("order_price"));
				orderbean.setOrder_image(re.getString("order_image"));
				orderbean.setOrder_count(re.getInt("order_count"));

				list.add(orderbean);
			}

			return list;

		} catch (RuntimeException er) {
			er.printStackTrace();
		} finally {
			try {
				if (re != null) {
					re.close();
					re = null;
				}
				if (pt != null) {
					pt.close();
					pt = null;
				} // 닫아줌
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

}