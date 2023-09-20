package com.project.jjj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class FreeBoard {
	
	public Connection con() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=utf-8", "root", "123456");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
	public void dicon(Statement statement, Connection connection) { //매개변수
		try {
			statement.close();
		}catch (Exception ignored) {
			// TODO: handle exception
		}
		try {
			connection.close();
		} catch (Exception ignored) {
			// TODO: handle exception
		}
	}
	
//게시판 데이터를 가져오는 메서드
	public ArrayList<BoardDTO> getBoardList() {
//		ArrayList<BoardDTO> boardList = new ArrayList<>();
		// 데이터베이스 연결 및 쿼리 실행
		Connection connection = con();
		Statement statement = null;
		ResultSet resultSet = null;
		// 결과를 BoardDTO 객체로 변환하여 boardList에 추가
		ArrayList<BoardDTO> arr = new ArrayList<BoardDTO>();
		
		try {
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from project.freeboard;");
			while(resultSet.next()) {
				BoardDTO boardDTO = new BoardDTO();
				boardDTO.setNumber(resultSet.getInt("freeboardnumber"));
				boardDTO.setWriter(resultSet.getString("freeboardwriter"));
				boardDTO.setName(resultSet.getString("freeboardname"));
				boardDTO.setText(resultSet.getString("freeboardtext"));
				boardDTO.setDate(resultSet.getString("freeboarddate"));
				arr.add(boardDTO);
			}
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			dicon(statement, connection);
		}
		return arr;
	}
}