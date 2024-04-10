package com.demo2.dao;

import java.util.List;

import com.demo2.models.Student;

public interface IStudentDao {
	public List<Student> getAll();
	public Student getById(int id);
	public List<Student> search(String name);
	
	public void insert(Student st);
	public void update(Student st);
	public void delete(int id);
}
