<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        crossorigin="anonymous">
</head>

<style>
    .crm-brand {
        color: aqua;
    }
</style>
<nav class="navbar navbar-dark navbar-expand-lg bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand crm-brand" href="#">CRM</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/demojsp/home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        Customer
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="add-customer">Add Customer</a></li>
                        <li><a class="dropdown-item" href="update-customer">Update Customer</a></li>
                        <li><a class="dropdown-item" href="#">Search Customer</a></li>
                        <li><a class="dropdown-item" href="display-customer">DisplayCustomer Profiles</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="display-customer">List Customers</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled">Disabled</a>
                </li>
            </ul>


        </div>
    </div>
    <html lang="en">

    
        <div class=" d-flex">

            <div class="me-2">
                <a href="http://localhost:8080/demojsp/login.jsp" class="btn btn-info" role="button">Login</a>
            </div>
            <div class="me-2">
                <a href="http://localhost:8080/demojsp/signup.jsp" class="btn btn-info" role="button">Signup</a>
            </div>
        </div>

        
            <div class="">
                <img src="./assets/images/logo.png" alt="" width="70" height="80">
            </div>
        
    </div>
</nav>