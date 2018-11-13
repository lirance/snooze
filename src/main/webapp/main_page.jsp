<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link href="open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="bootstrap/css/sidebar.css">

    <title>Personal Main Page</title>

</head>


<body ng-app="showApp" ng-controller="showController">


<script src="angularjslab.js"></script>
<script src="js/ui_router.js"></script>

<div class="container-fluid">
    <div class="row d-flex d-md-block flex-nowrap wrapper">
        <div class="col-md-3 float-left col-1 pl-0 pr-0 collapse width show">
            <div class="list-group border-0 card text-center text-md-left">

                <div class="wrapper">
                    <!-- Sidebar --->
                    <nav id="sidebar">
                        <ul class="list-unstyled components">

                            <li class="active">

                                <a href="Verify_profile_page.jsp" class="list-group-item">
                                    <span class="oi oi-person" title="person" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Edit Profile</span>
                                </a>
                            <li>

                            <li class="active">
                                <a href="group_setting_page.jsp" class="list-group-item ">

                                    <span class="oi oi-project" title="project" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Group</span>
                                </a>

                            </li>

                            <li class="active">

                                <a href="#"
                                   class="list-group-item">
                                    <span class="oi oi-account-logout" title="log" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Log Out</span>
                                </a>
                            <li>


                        </ul>
                    </nav>

                </div>
            </div>

        </div>

        <main class="col-md-9 float-left col px-5 pl-md-2 pt-2 main">
            <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
            <div class="page-header">
                <h2> Your Profile</h2>
            </div>
            <hr>
            <div class="row">
                <div class="col-lg-6">
                    <div id="demo" class="width collapse show" aria-expanded="true">
                        <div class="list-group" style="width:400px;color: #5a6268">
                            <p>
                            <div class="form-group">
                                <label for="Email1" >Email address</label>
                                <output type="email" class="form-control" id="Email1">
                                    ${sessionScope.user.eMail}

                                </output>
                            <%--<div ng-show="menuState.show">--%>
                                <%--<form class="form-signin text-center" ng-app="showApp'" ng-controller="showController" ng-submit="submitForm()">--%>


                                    <%--<!-- email form -->--%>
                                    <%--<div>--%>
                                        <%--<input id="inputEmail" name="email" type="email" placeholder="Email Address" required autofocus--%>
                                               <%--ng-model="users.inputEmail" style="width: 40%">--%>
                                        <%--users.inputEmail = ${sessionScope.user.eMail}--%>
                                    <%--</div>--%>

                        <%--</form>--%>



                            <%--</div>--%>

                            </div>
                            </p>

                            <p>
                            <div class="form-group">
                                <label for="OutputUsername" >UserName</label>
                                <output type="text" class="form-control" id="OutputUsername">
                                    ${sessionScope.user.userName}

                                </output>
                            </div>
                            </p>
                        </div>
                    </div>
                </div>


            </div>

        </main>
    </div>
</div>
<script src="js/main_page_show.js"></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="jquery/jquery-3.2.1.js"></script>
<script src="Popper.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>

</body>
</html>


