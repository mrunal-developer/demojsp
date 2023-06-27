package in.techdenovo.japps.model;

public class Customer {

private int customerId;
private String Firstname;
private String Lastname;
private String mobileNumber;
private String emailid;
public Customer() {
	super();
}
public Customer(int customerId, String firstname, String lastname, String mobileNumber, String emailid) {
	super();
	this.customerId = customerId;
	Firstname = firstname;
	Lastname = lastname;
	this.mobileNumber = mobileNumber;
	this.emailid = emailid;
}
public int getCustomerId() {
	return customerId;
}
public void setCustomerId(int customerId) {
	this.customerId = customerId;
}
public String getFirstname() {
	return Firstname;
}
public void setFirstname(String firstname) {
	Firstname = firstname;
}
public String getLastname() {
	return Lastname;
}
public void setLastname(String lastname) {
	Lastname = lastname;
}
public String getMobileNumber() {
	return mobileNumber;
}
public void setMobileNumber(String mobileNumber) {
	this.mobileNumber = mobileNumber;
}
public String getEmailid() {
	return emailid;
}
public void setEmailid(String emailid) {
	this.emailid = emailid;
}
}
