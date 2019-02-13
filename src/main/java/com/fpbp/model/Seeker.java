package com.fpbp.model;

public class Seeker {
	private String orgName;
	private String address;
	private String contactNo;
	private String website;
	private String email;
	private String requirement;
	private int quantity;
	private String category;
	int id;
	
	public Seeker() {
		super();
	}
	
	public int getSid() {
		return id;
	}

	public void setSid(int sid) {
		this.id = sid;
	}

	public Seeker(String orgName, String address, String contactNo, String website, String email, String requirement,
			int quantity, String category, int id) {
		super();
		this.orgName = orgName;
		this.address = address;
		this.contactNo = contactNo;
		this.website = website;
		this.email = email;
		this.requirement = requirement;
		this.quantity = quantity;
		this.category = category;
		this.id = id;
	}

	/*public Seeker(String orgName, String address, String contactNo, String website, String email, String requirement,
			int quantity,String category) {
		this.orgName = orgName;
		this.address = address;
		this.contactNo = contactNo;
		this.website = website;
		this.email = email;
		this.requirement = requirement;
		this.quantity = quantity;
		this.category = category;
	}
*/
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRequirement() {
		return requirement;
	}
	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}
	public int getQuantity() {
		return quantity;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
