package com.ust.dao;

import java.util.List;

import com.ust.entity.Book;
import com.ust.entity.User;

public interface Dao {
	
	public void saveUser(User theUser);
	public void saveBook(Book theBook);
	public List<Book> getBooks();
	public Book getBook(int id);
	public User login(User theUser);
	public User getUser(long id);

}
