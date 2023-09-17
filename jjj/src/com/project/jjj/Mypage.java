package com.project.jjj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Mypage {
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	
	
	public Nomal_info nomal_user(String id) {
		Nomal_info nomal_user = new Nomal_info();
		try {
			getcon();
			if(connection == null) {
//				throw는 예외처리를 강제로 시키는거고
//				throws는 메소드 옆에 달아서 해당 메소드가 어떤 예외를 던질 수 있는지를 선언하는 데 사용한다!
				throw new Exception("데이터베이스 연결 안됨.");
			}
//			java에서 jdbc를 사용해서 데이터베이스와 상호 작용할 때 사용되는 코드
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from nomal_user where nomalUserId = '" + id + "';");
			if(resultSet.next()) {
				nomal_user.setId(resultSet.getString("nomalUserId"));
				nomal_user.setName(resultSet.getString("name"));
				nomal_user.setEmail(resultSet.getString("eMail"));
				nomal_user.setMobilenumber(resultSet.getString("mobileNumber"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return nomal_user;
	}
	
	public Influ_info influ(String id) {
		Influ_info influ_info = new Influ_info();
		try {
			getcon();
			if(connection == null) {
				throw new Exception("데이터베이스 연결 안됨.");
			}
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from user where influUserId = '" + id + "';");
			if(resultSet.next()) {
				influ_info.setNickname(resultSet.getString("nickName"));
				influ_info.setName(resultSet.getString("name"));
				influ_info.setEmail(resultSet.getString("eMail"));
				influ_info.setMobilenumber(resultSet.getString("mobileNumber"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return influ_info;
	}
	
	public Company_info company(String id) {
		Company_info company_info = new Company_info();
		try {
			getcon();
			if(connection == null) {
				throw new Exception("데이터베이스 연결안됨.");
			}
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from company where companyId = '" + id + "';");
			if(resultSet.next()) {
				company_info.setComname(resultSet.getString("companyName"));
				company_info.setName(resultSet.getString("name"));
				company_info.setComemail(resultSet.getString("eMail"));
				company_info.setComnumber(resultSet.getString("telephoneNumber"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return company_info;
	}
	
	
	
	
	
	
//	커넥션 한번에 모은거임 쓰고싶으면 메소드 호출하면됨.
	public void getcon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=utf-8", "root", "simpsons514!");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
//	클로즈 전부 모은거임 finally 에 있는 트라이에 이 메소드 호출하면 됨.
	public void close() {
		try {
			resultSet.close();
			statement.close();
			connection.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
