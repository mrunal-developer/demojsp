package in.techdenovo.japps.controller;

import in.techdenovo.japps.dao.CustomerDaoImplementInterface;
import in.techdenovo.japps.dao.ICustomerDao;
import in.techdenovo.japps.model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/add-customer")
public class AddCustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("addCust.jsp"); //location instead of s
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Customer customer = new Customer();
        customer.setFirstname(req.getParameter("first-name"));
        customer.setLastname(req.getParameter("last-name"));
        customer.setEmailid(req.getParameter("email-id"));
        customer.setMobileNumber(req.getParameter("mobile-number"));
//        System.out.println("First Name: "+customer.getFirstname());
//        System.out.println("Last Name:"+customer.getLastname());
//        System.out.println("Email Id:"+customer.getEmailid());
//        System.out.println("Mobile Number:"+customer.getMobileNumber());
        ICustomerDao customerDao= new CustomerDaoImplementInterface();
        if (customerDao.createCustomer(customer)==1){
            resp.sendRedirect("success-add.jsp");
        }
        else{
            resp.sendRedirect("failure-add.jsp");
        }
    }

}

