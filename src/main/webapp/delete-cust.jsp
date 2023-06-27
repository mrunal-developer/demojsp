<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="in.techdenovo.japps.model.Customer"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
  <%@ include file="nav.jsp" %>
    <div class="container">

        <div class="row">
            <div class="col"></div>
            <div class="col">
                <form action="delete-customer" method="post">
                    <%  Customer customer = (Customer) request.getAttribute("customer");%>
                    <div class="mb-3">
                      <label for="inputFirstName" class="form-label">Id</label>
                      <input type="text" class="form-control" id="inputFirstName" name="id" value="<%=customer.getCustomerId()%>" readonly>
                    </div>
                    <div class="mb-3">
                      <label for="inputFirstName" class="form-label">First Name</label>
                      <input type="text" class="form-control" id="inputFirstName" name="first-name" value="<%=customer.getFirstname()%>">
                    </div>
                    <div class="mb-3">
                        <label for="inputLastName" class="form-label">Last Name</label>
                        <input type="text" class="form-control" id="inputLastName" name="last-name" value="<%=customer.getLastname()%>">
                    </div>
                    <div class="mb-3">
                        <label for="inputMobileNo" class="form-label">Mobile Number</label>
                        <input type="mobile" class="form-control" id="inputMobileNo" name="mobileNumber" value="<%=customer.getMobileNumber()%>">
                    </div>
                    <div class="mb-3">
                        <label for="inputCity" class="form-label">Email</label>
                        <input type="text" class="form-control" id="inputEmail" name="emailid" value="<%=customer.getEmailid()%>">
                    </div>


                    <button type="submit" class="btn btn-danger">Confirm Delete Customer</button>
                  </form>
            </div>
            <div class="col"></div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>