<%-- 
    Document   : index
    Created on : Mar 23, 2022, 8:18:17 PM
    Author     : reysegovia
--%>

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

        <div class="container d-flex justify-content-center p-3 mb-2">
            <a>
                <img alt="pexels" src="https://images.pexels.com/photos/3184465/pexels-photo-3184465.jpeg?cs=srgb&dl=pexels-fauxels-3184465.jpg&fm=jpg"
                     width="auto" height="500">
            </a>
        </div>


        <div class="container d-flex justify-content-center p-3 mb-2 bg-light text-dark">
            <a class="btn btn-primary" href="NewServlet?accion=listar" role="button">Consultar</a>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
