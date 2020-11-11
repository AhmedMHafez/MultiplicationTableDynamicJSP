<%-- 
    Document   : index
    Created on : Nov 9, 2020, 3:46:24 PM
    Author     : Hafez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dynamic Multiplication table</title>
    </head>
    <body>
        <%
            String counter = request.getParameter("counter");
        %>
        <h1>Thanks for using Mini-Multiplication Table</h1>
        <p>Here is the table that you entered:</p>
        <table background cellspacing="2" cellpadding="5" border="1">
            <tr>
                <th align="right" style="background-color:darkred;">Multiply</th>
                    <% int k = Integer.parseInt(counter); // Set j and k to counter.
                        for (int i = 1; i <= k; i++) { // Iterate counter times.
                    %>

                <th style="background-color:blue;"><% out.println(i); %> </th>
                <% } // Close the for loop here %>
            </tr>
            <%
                for (int i = 1; i <= k; i++) { // Iterate counter times.
            %>
            <tr>
            <th align="left" style="background-color:blue;"><% out.println(i); %> </th>
            <%
                for (int j = 1; j <= k; j++) { // Iterate counter times.
            %>
                <% if (j==i) { %>
                <td align="left" style="background-color:darkred;"><% out.println(i * j); %> </td>
                <% } %>
                <% if (j<=k-1) { %>
                <td align="left"><% out.println(i * j); %> </td>
                <% } %>
            <% } // Close the for loop here %>
            </tr>
            <% } // Close the for loop here %>
            
        </table>
        <p>To enter another counter address, click on the Back <br>
            button in your browser or the Return button shown <br>
            below.
        </p>
         
        <form action="index.html" method="post">
            <input type="submit" value="back">
        </form>

    </body>
</html>
