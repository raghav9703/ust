package com.ust.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="userdetails")
public class User {
	
	@Id
	@Column(nullable = false,length = 10,unique = true)
	private long mobileNumber;
	@Column(nullable = false)
	private String password;
	@Column(nullable = false,unique = true)
	private String emailAddress;
	@Column(nullable = false)
	private String addressLine1;
	private String addressLine2;
	@Column(nullable = false)
	private String city;
	@Column(nullable = false,length = 6)
	private int pincode;
	
	public User() {}

	public long getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getAddressLine1() {
		return addressLine1;
	}

	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}

	public String getAddressLine2() {
		return addressLine2;
	}

	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	@Override
	public String toString() {
		return "User [mobileNumber=" + mobileNumber + ", password=" + password + ", emailAddress=" + emailAddress
				+ ", addressLine1=" + addressLine1 + ", addressLine2=" + addressLine2 + ", city=" + city + ", pincode="
				+ pincode + "]";
	}
	
	

	
}
	