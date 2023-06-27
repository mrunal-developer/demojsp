<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <%@page import="in.techdenovo.japps.model.Customer" %>
            <%@page import="java.util.ArrayList" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Document</title>
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
                        rel="stylesheet" crossorigin="anonymous">
                </head>

                <style>
                    .crm-brand {
                        color: aqua;
                    }
                </style>

                <body>
                    <%@ include file="nav.jsp" %>
                        <div class="container">

                            <h1>Displaying Customer List</h1>

                            <table border="1" width="900" align="center">
                                <tr bgcolor="#0dcaf0">
                                    <th><b> Id</b></th>
                                    <th><b>First Name</b></th>
                                    <th><b> Last Name</b></th>
                                    <th><b> Mobile No</b></th>
                                    <th><b> Email</b></th>
                                    <th>Action</th>
                                </tr>
                                <%-- Fetching the attributes of the request object which was previously set by the
                                    servlet "CustomerServlet.java" --%>
                                    <%ArrayList<Customer> custdata =
                                        (ArrayList<Customer>)request.getAttribute("Customers");
                                            for(Customer customer:custdata){%>
                                            <tr>
                                                <td>
                                                    <%=customer.getCustomerId()%>
                                                </td>
                                                <td>
                                                    <%=customer.getFirstname()%>
                                                </td>
                                                <td>
                                                    <%=customer.getLastname()%>
                                                </td>
                                                <td>
                                                    <%=customer.getMobileNumber()%>
                                                </td>
                                                <td>
                                                    <%=customer.getEmailid()%>
                                                </td>
                                                <td>
                                                    <a href="update-customer?id=<%=customer.getCustomerId()%>"
                                                        class="btn btn-info">
                                                        <i class="bi bi-pencil-square">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                                height="16" fill="currentColor"
                                                                class="bi bi-pencil-square" viewBox="0 0 16 16">
                                                                <path
                                                                    d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
                                                                <path fill-rule="evenodd"
                                                                    d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
                                                            </svg>
                                                        </i>
                                                    </a>
                                                    <a href="delete-customer?id=<%=customer.getCustomerId()%>"
                                                        class="btn btn-danger">
                                                        <i class="bi bi-person-x">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                                height="16" fill="currentColor" class="bi bi-person-x"
                                                                viewBox="0 0 16 16">
                                                                <path
                                                                    d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm.256 7a4.474 4.474 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10c.26 0 .507.009.74.025.226-.341.496-.65.804-.918C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4s1 1 1 1h5.256Z" />
                                                                <path
                                                                    d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm-.646-4.854.646.647.646-.647a.5.5 0 0 1 .708.708l-.647.646.647.646a.5.5 0 0 1-.708.708l-.646-.647-.646.647a.5.5 0 0 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 .708-.708Z" />
                                                            </svg>
                                                        </i>

                                                        </i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <%}%>
                            </table>
                        </div>
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                            crossorigin="anonymous"></script>
                </body>

                </html>