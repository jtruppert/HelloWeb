<%-- 
    Document   : response
    Created on : Feb 5, 2017, 4:48:04 PM
    Author     : rjena
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:useBean id="mybean" scope="session" class="org.mypackage.hello.NameHandler" /> <%-- establish bean as a value of NameHandler class --%>
        <jsp:setProperty name="mybean" property="name" />                                   <%-- sets value of the bean to NameHandler.name property --%>
        <h1>Hello, <jsp:getProperty name="mybean" property="name" />!</h1>                  <%-- gets value of the bean --%>


        <p>Testing Database</p>
        <sql:setDataSource var="snapshot" driver="org.apache.derby.jdbc.ClientDriver"
                           url="jdbc:derby://localhost:1527/sample"
                           user="app"  password="app"/>                                     <%-- linking the database by setting the source --%>

        <sql:query dataSource="${snapshot}" var="result">                                   <%-- take data from snapshot and set to result --%>
            SELECT * from Customer
        </sql:query>

        <table border="1" width="100%">                                             <%-- create the table and column titles --%>
            <tr>
                <th>Customer ID</th>
                <th>Discount code</th>
                <th>zip</th>
                <th>Name</th>
                <th>Address Line1</th>
                <th>Address Line2</th>
                <th>City</th>
                <th>State</th>
                <th>Phone</th>
                <th>Fax</th>
                <th>Email</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">                            <%-- loop that syncs values to table --%>
                <tr>
                    <td><c:out value="${row.customer_id}"/></td>
                    <td><c:out value="${row.discount_code}"/></td>
                    <td><c:out value="${row.zip}"/></td>
                    <td><c:out value="${row.name}"/></td>
                    <td><c:out value="${row.addressline1}"/></td>
                    <td><c:out value="${row.addressline2}"/></td>
                    <td><c:out value="${row.city}"/></td>
                    <td><c:out value="${row.state}"/></td>
                    <td><c:out value="${row.phone}"/></td>
                    <td><c:out value="${row.fax}"/></td>
                    <td><c:out value="${row.email}"/></td>
                </tr>
            </c:forEach>
        </table>


            <h1>Some More Inputs</h1>
            
        <form action="response2.jsp" method="get">                                  
            <table cellspacing="5" border="0">
                <tr>
                    <td align="right">First Name : </td>
                    <td><input type="text" name="firstName"></td>
                </tr>
                <tr>
                    <td align="right">Last Name : </td>
                    <td><input type="text" name="lastName"></td>
                </tr>
                <tr>
                    <td align="right">Email Address : </td>
                    <td><input type="text" name="emailAddress"></td>
                </tr>

                <tr>
                    <td></td>
                    <td align="left"></br><input type="submit" value="Submit"></td>
                </tr>

            </table>
        </form>

    </body>
</html>