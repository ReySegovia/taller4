<%-- 
    Document   : lista
    Created on : Mar 23, 2022, 8:20:48 PM
    Author     : reysegovia
--%>
<%@page import="Modelos.ImplementacionDAO"%>
<%@page import="Modelos.Libros"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>
    <body>
        <div class="container">
            <nav class="d-flex navbar navbar-dark bg-primary">
                <div class="container-fluid d-flex justify-content-center p-3 mb-2">
                    <a class="navbar-brand mb-0 h1" href="index.jsp"><h1>SUPPLIER NEGOTIATION</h1></a>
                </div>
            </nav>
        </div>

        <div class="container">
            <table border="1" class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>SUPPLIER</th>
                        <th>PART NUMBER</th>
                        <th>MANAGER</th>
                    </tr>
                </thead>
                <%
                    ImplementacionDAO dao = new ImplementacionDAO();
                    List<Libros> list = dao.listar();
                    Iterator<Libros> iter = list.iterator();
                    Libros lib = null;
                    while (iter.hasNext()) {
                        lib = iter.next();

                %>
                <tbody>
                    <tr>
                        <td><%= lib.getId()%></td>
                        <td><%= lib.getSupplier()%></td>
                        <td><%= lib.getPart_number()%></td>
                        <td><%= lib.getManager()%></td>
                    </tr>
                </tbody>
                <%}%>
            </table>
        </div>
    </body>
</html>
