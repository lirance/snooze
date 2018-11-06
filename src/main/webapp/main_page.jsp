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

    <title>Personal Main Page</title>

    <style>

        #sidebar {
            /* don't forget to add all the previously mentioned styles here too */
            background: #7386D5;
            color: #fff;
            transition: all 0.3s;
        }

        #sidebar .sidebar-header {
            padding: 20px;
            background: #6d7fcc;
        }

        #sidebar ul.components {
            padding: 20px 0;
            border-bottom: 1px solid #47748b;
        }

        #sidebar ul p {
            color: #fff;
            padding: 10px;
        }

        #sidebar ul li a {
            padding: 10px;
            font-size: 1.1em;
            display: block;
        }

        #sidebar ul li a:hover {
            color: #7386D5;
            background: #fff;
        }

        #sidebar ul li.active > a, a[aria-expanded="true"] {
            color: #fff;
            background: #6d7fcc;
        }

        ul ul a {
            font-size: 0.9em !important;
            padding-left: 30px !important;
            background: #6d7fcc;
        }
    </style>
</head>


<body>


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

                                <a href="Verify_profile_page.jsp" data-toggle="collapse"
                                   class="list-group-item">
                                    <span class="oi oi-person" title="person" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Edit Profile</span>
                                </a>
                            <li>

                            <li class="active">
                                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false"
                                   class="list-group-item dropdown-toggle">

                                    <span class="oi oi-project" title="project" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Group Setting</span>
                                </a>
                                <ul class="collapse list-unstyled" id="homeSubmenu">
                                    <li>
                                        <a href="#" class="list-group-item list-group-item-action"
                                           data-parent="#sidebar">
                                            <span class="oi oi-calendar" title="calender" aria-hidden="true"></span>
                                            Already Choosed
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="list-group-item list-group-item-action">
                                            <span class="oi oi-circle-check" title="circle-check"
                                                  aria-hidden="true"></span>
                                            Current Choosing
                                        </a>

                                    </li>
                                    <li>
                                        <a href="#" class="list-group-item list-group-item-action">
                                            <span class="oi oi-cog" title="cog" aria-hidden="true"></span>
                                            Group Setting
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <li class="active">

                                <a href="#" data-toggle="collapse"
                                   class="list-group-item">
                                    <span class="oi oi-cog" title="cog" aria-hidden="true"></span>
                                    <span class="d-none d-inline"></span>
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
                <h2>Profile</h2>
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