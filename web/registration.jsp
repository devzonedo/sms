<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <style>
            /* Remove the navbar's default margin-bottom and rounded borders */ 
            .navbar {
                margin-bottom: 0;
                border-radius: 0;
            }

            /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
            .row.content {height: 450px}

            /* Set gray background color and 100% height */
            .sidenav {
                padding-top: 20px;
                background-color: #f1f1f1;
                height: 100%;
            }

            /* Set black background color, white text and some padding */
            footer {
                background-color: #555;
                color: white;
                padding: 15px;
            }

            /* On small screens, set height to 'auto' for sidenav and grid */
            @media screen and (max-width: 767px) {
                .sidenav {
                    height: auto;
                    padding: 15px;
                }
                .row.content {height:auto;} 
            }
        </style>
        
        
        
        <link href="css/sms-style.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#">SMS</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">





                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container-fluid text-center">    
            <div class="row content">


                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4"> 
                        <h1>SMS</h1>
                        <h3>Student Registration</h3>

                        ${msgx}

                        <form action="RegisterServlet" method="post">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label"> First Name <span class="mando"> * </span> </label>
                                <input required="" type="text" class="form-control" id="exampleInputEmail1" name="first_name">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Last Name <span class="mando"> * </span> </label>
                                <input required="" type="text" class="form-control" id="exampleInputEmail1" name="last_name">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Username <span class="mando"> * </span> </label>
                                <input required="" type="text" class="form-control" id="exampleInputEmail1" name="username">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Password <span class="mando"> * </span> </label>
                                <input required="" type="password" class="form-control" id="exampleInputPassword1" name="pword">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Retype Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" name="repword">
                            </div>
                            
                             <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Type <span class="mando"> * </span> </label>
                                <select  required="" class="form-control" name="user_type">
                                    <option >--select--</option>
                                    <option value="STUDENT">STUDENT</option>
                                    <option value="TEACHER">TEACHER</option>
                                </select>
                            </div>
                            <div class="mb-3 form-check">
                                &nbsp;
                            </div>
                            <button type="submit" class="btn btn-primary">Register Now</button>
                        </form>

                        
                        
                        <br>
                        <br>
                        <br>
                        <br>
                        
                    </div>
                    <div class="col-md-4">
                       



                    </div>
                </div>





            </div>
        </div>

        <!--footer-->
        <%@include file="_footer.jsp" %>
        <!--footer-->

    </body>
</html>
