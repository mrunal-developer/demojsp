<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
  crossorigin="anonymous">

</head>
<body>
   <%@ include file="nav.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-lg-3"></div>
        <div class="col-lg-6">
            <div>
                <form action="add-customer" method ="post"> 
                    <h3>Add Customer Details</h3>
                    <div class="mb-3">
                        <label for="firstName" class="form-label">First Name</label>
                        <input type="text" class="form-control" id="firstName" name="first-name" aria-describedby="firstName" placeholder="Your First Name">
                    </div>
                    <div class="mb-3">
                      <label for="lastName" class="form-label">Last Name</label>
                      <input type="text" class="form-control" id="lastName" name="last-name" aria-describedby="lastName" placeholder="Your Last Name">
                  </div>

                  <div class="mb-3">
                    <label for="emailid" class="form-label">Email Id</label>
                    <input type="text" class="form-control" id="lastName" name="email-id" aria-describedby="emailId" placeholder="Your Email Id">
                </div> 
              
                <div class="mb-3">
                    <label for="mobileno" class="form-label">Mobile No</label>
                    <input type="text" class="form-control" id="mobileNumber" name="mobile-number" aria-describedby="mobileNumber" placeholder="Your Mobile Number">
                </div>        
                                
                  <button type="submit" class="btn btn-primary">Submit</button>
                </form>
              </div>
        </div>
        <div class="col-lg-3"></div>
    </div>
</div>

  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
crossorigin="anonymous"></script>
</body>
</html>