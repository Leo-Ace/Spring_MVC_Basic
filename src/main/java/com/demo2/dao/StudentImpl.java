package com.demo2.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo2.models.Student;

@Repository
public class StudentImpl implements IStudentDao {
	@Autowired(required = true)
	SessionFactory sessionFactory;

	@Override
	public List<Student> getAll() {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Query query = session.createQuery("from Student");
		List<Student> result = query.getResultList();
		session.getTransaction().commit();
		return result;
	}

	@Override
	public Student getById(int id) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Student st = session.get(Student.class, id);
		session.getTransaction().commit();
		return st;
	}

	@Override
	public List<Student> search(String name) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Query query = session.createQuery("from Student where name like :name");
		query.setParameter("name", "%" + name + "%");
		List<Student> result = query.getResultList();
		session.getTransaction().commit();
		return result;
	}

	@Override
	public void insert(Student st) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(st);
		session.getTransaction().commit();
	}

	@Override
	public void update(Student st) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(st);
		session.getTransaction().commit();
	}

	@Override
	public void delete(int id) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Student st = session.get(Student.class, id);
		session.delete(st);
		session.getTransaction().commit();
	}
	
}	
