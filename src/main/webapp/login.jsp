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

<body>
    <%@ include file="nav.jsp" %>
        <div class="container">
            Welcome to our CRM Platform.
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-3 col-12"></div>
                <div class="col-lg-4 col-md-3 col-12">
                    <form class="mt-5">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1"
                                aria-describedby="emailHelp" placeholder="Enter email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                                else.</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1"
                                placeholder="Password">
                        </div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Check me out</label>
                        </div>
                        <div class="d-grid gap-2">
                            <button type="submit" class="btn btn-primary block">Submit</button>

                        </div>

                    </form>
                </div>
                <div class="col-lg-4 col-md-3 col-12"></div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
</body>

</html>