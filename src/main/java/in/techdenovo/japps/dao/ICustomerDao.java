package in.techdenovo.japps.dao;

import java.util.List;

import in.techdenovo.japps.util.DbConnectionUtil;
import in.techdenovo.japps.model.Customer;

public interface ICustomerDao {
	public int createCustomer(Customer customer); 
	public List<Customer> getAllCustomers();
    public Customer updateCustomer(Customer customer);
    public Customer getCustomerById(int id);
    public int deleteCustomer(int customerId);
	
	
}