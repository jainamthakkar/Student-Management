package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Student;

public class StudentDAO {

	private Connection conn;

	public StudentDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addStudent(Student student) {
		
		boolean f = false;
		
		try {
			String sql = "insert into student(name, dob, address, qualification, email) values(?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, student.getName());
			ps.setString(2, student.getDob());
			ps.setString(3, student.getAddress());
			ps.setString(4, student.getQualification());
			ps.setString(5, student.getEmail());
			
			int i = ps.executeUpdate();			
			
			if(i == 1)
				f = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
}
