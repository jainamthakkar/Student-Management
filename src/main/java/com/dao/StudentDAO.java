package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

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

			if (i == 1)
				f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public List<Student> getAllStudent() {

		List<Student> list = new ArrayList<Student>();
		Student s = null;

		try {

			String sql = "select * from student";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				s = new Student();
				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setDob(rs.getString(3));
				s.setAddress(rs.getString(4));
				s.setQualification(rs.getString(5));
				s.setEmail(rs.getString(6));
				list.add(s);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public Student getStudentById(int id) {

		List<Student> list = new ArrayList<Student>();
		Student s = null;

		try {

			String sql = "select * from student where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				s = new Student();
				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setDob(rs.getString(3));
				s.setAddress(rs.getString(4));
				s.setQualification(rs.getString(5));
				s.setEmail(rs.getString(6));
				list.add(s);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	public boolean updateStudent(Student student) {

		boolean f = false;

		try {
			String sql = "update student set name=?, dob=?, address=?, qualification=?, email=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, student.getName());
			ps.setString(2, student.getDob());
			ps.setString(3, student.getAddress());
			ps.setString(4, student.getQualification());
			ps.setString(5, student.getEmail());
			ps.setInt(5, student.getId());

			int i = ps.executeUpdate();

			if (i == 1) f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

}
