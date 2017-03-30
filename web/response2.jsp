<%-- 
    Document   : response2
    Created on : Feb 7, 2017, 2:19:35 PM
    Author     : rjena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>this is what you entered in the previous page</h1>
        <%@ page import="org.mypackage.hello.Customer" %> 

        <%
            String firstName = request.getParameter("firstName");               //request to the server
            String lastName = request.getParameter("lastName");
            String emailAddress = request.getParameter("emailAddress");
            // Using DataModel in a JSP
            Customer customer = new Customer(firstName, lastName, emailAddress);
        %>

        <p></p>
        
        <table cellspacing="0" cellpadding="5" border="1">
            <tr>
                <td align="right">First Name :</td>
                <td><%=customer.getFirstName()%></td>
            </tr>

            <tr>
                <td align="right">Last Name :</td>
                <td><%=customer.getLastName()%></td>
            </tr>

            <tr>
                <td align="right">Email Address :</td>
                <td><%=customer.getEmailAddress()%></td>                        <%-- using the --%>
            </tr>
        </table>
    </body>
</html>
