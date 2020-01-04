<%! int day = 3; %> 
<%! int fontSize; %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Syntax</title>
    </head>
    <body>
        <!--scriptlet code-->
        <%
        out.println("Your IP Address is : " +request.getRemoteAddr());
        out.println("<br />");
        out.println("Your Host Name is : " +request.getRemoteHost());
        out.println("<br />");
        out.println("Your Host URI is : " +request.getRequestURI());
        out.println("<br />");
        out.println("Your Host URL is : " +request.getRequestURL());
        out.println("<br />");
        out.println("Your User is : " +request.getRemoteUser());
        out.println("<br />");
        out.println("Your Host Port is : " +request.getRemotePort());
        %>
    <!--scriptlet code-->
    <p>Today's Date : <%= (new java.util.Date()).toLocaleString()%></p>
    <h2>A Test of Comments</h2> 
      <%-- This comment will not be visible in the page source --%> 
    <h2>Decision-Making Statements</h2> 
      <% if (day == 1 || day == 7) { %>
         <p> Today is weekend</p>
      <% } else { %>
         <p> Today is not weekend</p>
      <% } %>
      <h2>Decision-Making Statements</h2> 
    <% 
         switch(day) {
            case 0:
               out.println("It\'s Sunday.");
               break;
            case 1:
               out.println("It\'s Monday.");
               break;
            case 2:
               out.println("It\'s Tuesday.");
               break;
            case 3:
               out.println("It\'s Wednesday.");
               break;
            case 4:
               out.println("It\'s Thursday.");
               break;
            case 5:
               out.println("It\'s Friday.");
               break;
            default:
               out.println("It's Saturday.");
         }
      %>
       <h2>Loop Statements</h2>
        <%for ( fontSize = 1; fontSize <= 3; fontSize++){ %>
         <font color = "green" size = "<%= fontSize %>">
            JSP Tutorial
      </font><br />
      <%}%>
      <h2>while  Statements</h2>
       <%while ( fontSize <= 3){ %>
         <font color = "green" size = "<%= fontSize %>">
            JSP Tutorial
         </font><br />
         <%fontSize++;%>
      <%}%>
    </body>
</html>
