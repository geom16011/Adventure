<%--
    Document   : loginPage
    Created on : 19 Μαρ 2021, 6:19:39 μμ
    Author     : tzortziskapellas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
        <!-- JQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
        <title>Forgot Password</title>
        <link rel="stylesheet" href="css/login.css">
    </head>

    <body>
        <%@ include file="nav.jsp" %>
        <section class="Form my-4 mx-5">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-centered">
                        <h1 class="font-weight-bold py-3">Adventure Booking</h1>
                        <h4>Υπενθύμηση το συνθηματικό</h4>
                        <c:if test="${error != null}">
                            <p class="error">${error}</p>
                        </c:if>
                        <form:form action="${pageContext.request.contextPath}/forgotpassword" method="post">

                            <c:if test="${successMessage != null}">
                                <p>${successMessage}</p>
                            </c:if>
                            <c:if test="${successMessage == null}">
                                <p>Θα σου στείλουμε ένα σύνδεσμο επανεκκίνησης κωδικού μέσω e-mail.</p>
                            </c:if>
                            <div class="form-row">
                                <div class="col-lg-9 col-centered">
                                    <input type="text" placeholder="Δώσε το username σου..." name="username"  class="form-control my-3 p-4" required autofocus>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-lg-9 col-centered">
                                    <input type="submit" value="Υποβολή" class="btn1 mt-3 mb-5">
                                </div>
                            </div>
                        </form:form>
                        <div id="formFooter">
                            <p>Δεν έχεις λογαριασμό;
                                <a class="underlineHover" href="${pageContext.request.contextPath}/register">Κάνε εγγραφή τώρα</a>
                        </div>
                        </p>
                    </div>
                </div>
            </div>
        </section>
                        <%@ include file="footer.jsp" %>
        <script src="js/forgotPasswordJs.js"></script>
    </body>
</html>
