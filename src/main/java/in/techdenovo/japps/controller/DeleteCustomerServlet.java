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

@WebServlet("/delete-customer")
public class DeleteCustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id =Integer.parseInt(req.getParameter("id"));
        System.out.println(id);
        ICustomerDao  customerDao = new CustomerDaoImplementInterface();
        Customer customer= customerDao.getCustomerById(id);
        req.setAttribute("customer",customer);
       req.getRequestDispatcher("delete-cust.jsp").forward(req,resp);
    } @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        ICustomerDao customerDao = new CustomerDaoImplementInterface();
       customerDao.deleteCustomer(id);
        resp.sendRedirect("customers");
    }

}
