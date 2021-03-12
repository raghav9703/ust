package com.ust.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="orderdetails")
public class Order implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int orderId;
	@Column(nullable = false,unique = true)
	private String customerName;
	@Column(nullable = false,unique = true,length = 10)
	private long phoneNumber;
	@Column(nullable = false,unique = true)
	private String address;
	@Column(nullable = false,unique = true)
	private String orderDate;
	@Column(nullable = false,unique = true)
	private int quantity;
	
	@OneToOne(cascade = CascadeType.ALL)
	private Book bookId;
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public long getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Book getBookId() {
		return bookId;
	}
	public void setBookId(Book bookId) {
		this.bookId = bookId;
	}
	
	
	

}
