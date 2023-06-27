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
import java.util.List;

@WebServlet("/display-customer")
public class DisplayCustomerServlet extends HttpServlet {
    ICustomerDao customerDao = new CustomerDaoImplementInterface();
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.sendRedirect("displaycust.jsp"); //location instead of s
        List<Customer> customerList = customerDao.getAllCustomers();
        req.setAttribute("Customers",customerList);
        req.getRequestDispatcher("displaycust.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);

    }
}
