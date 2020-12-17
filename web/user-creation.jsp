<%-- 
    Document   : user-creation
    Created on : Dec 9, 2020, 8:56:29 PM
    Author     : ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>User creation</h1>


        <form action="UserCreationServlet" method="post">
            <table>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="first_name"/></td>
                </tr> 
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="last_name"/></td>
                </tr> 
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="pword"/></td>
                </tr>
                <tr>
                    <td>User Type</td>
                    <td>
                        <select name="user_type">
                            <option value="STU">STUDENT</option>
                            <option value="TEA">TEACHER</option>
                        </select> 

                    </td>
                <tr>
                    <td></td>
                    <td><input type="submit" name="btnSub" value="create user"/></td>
                </tr>
                </tr>
            </table>
        </form>


    </body>
</html>
