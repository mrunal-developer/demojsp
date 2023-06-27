package in.techdenovo.japps.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import in.techdenovo.japps.model.Customer;
import in.techdenovo.japps.util.DbConnectionUtil;

public class CustomerDaoImplementInterface implements ICustomerDao {
	DbConnectionUtil connectionUtil = new DbConnectionUtil();

	@Override

	public List<Customer> getAllCustomers() {

		List<Customer> customerList = new ArrayList<>();

		try {

		Connection con = connectionUtil.getDbConnection();

		String query = "SELECT * FROM CUSTOMERS";

		PreparedStatement ps = con.prepareStatement(query);

		ResultSet rs = ps.executeQuery();

		while(rs.next()) {

		Customer customer = new Customer();

		customer.setCustomerId(rs.getInt("ID"));

		customer.setFirstname(rs.getString("FIRSTNAME"));

		customer.setLastname(rs.getString("LASTNAME"));

		customer.setMobileNumber(rs.getString("MOBILE_NUMBER"));

		customer.setEmailid(rs.getString("EMAILID"));

		customerList.add(customer);

		}

		con.close();

		} catch (Exception e) {

		e.printStackTrace();

		}

		return customerList;

		}

	@Override

	public int  createCustomer(Customer customer) {

	int flag =0;

	if(customer!=null) {

	try {

	Connection con = connectionUtil.getDbConnection();

	String query = "INSERT INTO customers (FIRSTNAME, LASTNAME,MOBILE_NUMBER,EMAILID) VALUES (?,?,?,?)";

	PreparedStatement ps = con.prepareStatement(query);

	ps.setString(1,customer.getFirstname());

	ps.setString(2,customer.getLastname());

	ps.setString(3,customer.getMobileNumber());

	ps.setString(4,customer.getEmailid());

	if(ps.executeUpdate()==1) {

	flag=1;

	}

	con.close();

	} catch (Exception e) {

	e.printStackTrace();

	}

	}

	return flag;

	}

	@Override
	public Customer updateCustomer(Customer updatedCustomerInfo) {
		Customer existingCustomer = new Customer();

		try {

		Connection con = connectionUtil.getDbConnection();

		String query = "UPDATE customers SET FIRSTNAME=?, LASTNAME=?, MOBILE_NUMBER=?, EMAILID=? WHERE ID=?";

		PreparedStatement ps = con.prepareStatement(query);

		existingCustomer= getCustomerById(updatedCustomerInfo.getCustomerId());

		if(existingCustomer.getCustomerId()>0) {

		existingCustomer.setFirstname(updatedCustomerInfo.getFirstname());

		existingCustomer.setLastname(updatedCustomerInfo.getLastname());

		existingCustomer.setMobileNumber(updatedCustomerInfo.getMobileNumber());

		existingCustomer.setEmailid(updatedCustomerInfo.getEmailid());

		}

		ps.setString(1,existingCustomer.getFirstname());

		ps.setString(2,existingCustomer.getLastname());
		ps.setString(3,existingCustomer.getMobileNumber());

		ps.setString(4,existingCustomer.getEmailid());

		ps.setInt(5, existingCustomer.getCustomerId());

		ps.executeUpdate();

		con.close();

		} catch (Exception e) {

		e.printStackTrace();

		}

		return existingCustomer ;
	}

	@Override
	public Customer getCustomerById(int id) {
		Customer customer = new Customer();

		try {

		Connection con = connectionUtil.getDbConnection();

		String query = "SELECT * FROM CUSTOMERS WHERE ID=?";

		PreparedStatement ps = con.prepareStatement(query);

		ps.setInt(1, id);

		ResultSet rs = ps.executeQuery();

		while(rs.next()) {

		customer.setCustomerId(rs.getInt("ID"));

		customer.setFirstname(rs.getString("FIRSTNAME"));

		customer.setLastname(rs.getString("LASTNAME"));

		customer.setMobileNumber(rs.getString("MOBILE_NUMBER"));

		customer.setEmailid(rs.getString("EMAILID"));

		}

		con.close();

		} catch (Exception e) {

		e.printStackTrace();

		}

		return customer;

		}
	
	@Override

	public int deleteCustomer(int customerId) {
		int flag =0;
		try {

		Connection con = connectionUtil.getDbConnection();

		String query = "DELETE FROM customers WHERE ID=?";

		PreparedStatement ps = con.prepareStatement(query);
		ps.setInt(1,customerId);

		if(ps.executeUpdate()==1) {
		flag = 1;
		}
		con.close();

		} catch (Exception e) {

		e.printStackTrace();

		}

		return flag;
		
	}


	
	}


