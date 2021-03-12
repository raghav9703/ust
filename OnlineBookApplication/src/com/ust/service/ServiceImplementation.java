package com.ust.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import com.ust.dao.Dao;
import com.ust.entity.Book;
import com.ust.entity.User;

@org.springframework.stereotype.Service
public class ServiceImplementation implements Service{
	
	@Autowired
	private Dao dao;

	@Override
	@Transactional
	public void saveUser(User theUser) {
		// TODO Auto-generated method stub
		dao.saveUser(theUser);
		
	}

	@Override
	@Transactional
	public void saveBook(Book theBook) {
		// TODO Auto-generated method stub
		dao.saveBook(theBook);
	}

	@Override
	@Transactional
	public List<Book> getBooks() {
		// TODO Auto-generated method stub
		return dao.getBooks();
	}

	@Override
	@Transactional
	public Book getBook(int id) {
		// TODO Auto-generated method stub
		return dao.getBook(id);
	}

	@Override
	@Transactional
	public User login(User theUser) {
		// TODO Auto-generated method stub
		return dao.login(theUser);
	}

	@Override
	@Transactional
	public User getUser(long id) {
		// TODO Auto-generated method stub
		return dao.getUser(id);
	}
	
	

}
