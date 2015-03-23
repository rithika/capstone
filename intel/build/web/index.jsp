
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //
    Object userObj = session.getAttribute("validUser");
    if(userObj == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Home Page</title>

        <link href="css/boostrap/bootstrap.min.css" rel="stylesheet">
        <link href="css/OurCSS/homepage.css" rel="stylesheet">
    </head>

    <body>
        <div class="navigation-bar">
            <div class = "nav-header">
                <img id="header" src="media/logo.png">
            </div>
            <nav class="navbar navbar-default">
                <div class="container">
                    <div id="navbar">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="">Main</a></li>
                            <li><a href="result.jsp">Result</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a id="user" href="">
                                <%
                                    String user = (String) userObj;
                                    out.print("Welcome " + user);
                                %>
                                </a>
                            <li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div>
            <div id="file-input"> 
                <form class="form-inline" action="testing" method="POST">
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" name="file_name" class="form-control" id="exampleInputAmount" placeholder="Filename">
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Run test</button>
                </form>
            </div>
        </div>
    </body>
</html>