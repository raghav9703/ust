package com.ust.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ust.entity.Book;
import com.ust.entity.User;

@Repository
public class DaoImplementation implements Dao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveUser(User theUser) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(theUser);
	}

	@Override
	public void saveBook(Book theBook) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(theBook);
	}
	
	@Override
	public List<Book> getBooks() {
		Session session = sessionFactory.getCurrentSession();
		Query<Book> theQuery = session.createQuery("from Book",Book.class);
		List<Book> books = theQuery.getResultList();
		return books;
	}
	
	@Override
	public Book getBook(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Book book =session.get(Book.class, id);
		return book;	
	}
	
	@Override
	public User login(User theUser) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery(" from User where mobileNumber=:userName and password=:passWord");
		query.setParameter("userName",theUser.getMobileNumber());
		query.setParameter("passWord",theUser.getPassword());
		User theuser = (User) query.uniqueResult();
		return theuser;

	}
	
	@Override
	public User getUser(long id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		User theuser =session.get(User.class, id);
		return theuser;	
	}

}
