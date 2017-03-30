<%-- 
    Document   : index
    Created on : Feb 5, 2017, 4:34:51 PM
    Author     : rjena
--%>

<%-- //ctrl-shift-8 gets the palette --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Entry Form!</h1>
        <form name="Name input form" action="response.jsp"> <%-- link to the next jsp page, response.jsp --%>
            Enter your name:
            <input type="text" name="name" />
            <input type="submit" value="OK" />
        </form>
    </body>
</html>
