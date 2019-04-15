<%-- 
    Document   : login
    Created on : Apr 14, 2019, 5:03:23 PM
    Author     : moshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log In</title>
        <link rel="stylesheet" href="resource/bootstrap.min.css">  
    </head>
    <body>
        <%
            String error = request.getParameter("error");
            if (error == null || error == "null") {
                error = "";
            }
        %>
        <br><br>
        <div class="col-md-8">
            <div class="panel panel-default">
                <br><br>
                <div class="panel-body">
                    <h2 class = "text-center">Scholarship Payment System</h2>
                    <form class="form-horizontal" role="form" method="POST" action="loginServlet">
                        <div class="text-center" style="padding: 30px">
                            <img src="resource/DBBL-Logo-1.png" alt="Logo" height="12%" width="12%">
                        </div>
                        <div class="container " style = "margin-bottom:10px;">
                            <label for="login_name" class="col-md-2 control-label">User Name</label>
                            <div class="col-md-4">
                                <input id="user_name" type="text" class="form-control" name="user_name" value="" required autofocus>
                            </div>
                        </div>
                        <div class="container">
                            <label for="password" class="col-md-2 control-label">Password</label>
                            <div class="col-md-4">
                                <input id="password" type="password" class="form-control" name="password" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class = "col-md-5 col-md-offset-3" style = "color:red; font-weight: bold"><%=error%></div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-1 col-md-offset-3">
                                <button type="submit" class="btn btn-primary">
                                    Login 
                                </button>
                            </div>
                            <label class="col-md-1 text-center" style="padding-right:0"> OR </label>
                            <a class="btn btn-link" href="signup.jsp"  style="padding:0">
                                Sign Up Here
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
