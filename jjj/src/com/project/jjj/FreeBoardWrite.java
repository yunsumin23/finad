package com.project.jjj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import com.project.DTO.BoardDTO;

public class FreeBoardWrite {
	public void freeBoardWrite(BoardDTO boardDTO) {
		Connection connection = null;
		Statement statement = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "123456");
			statement = connection.createStatement();
			statement.executeUpdate("insert into freeboard values ('"
			+ boardDTO.getName() + "','"
			+ boardDTO.getDate() + "','"
			+ boardDTO.getWriter() + "','"
			+ boardDTO.getText() + "');");
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				statement.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
			try {
				connection.close();				
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
	}
	

}
