<%--
  Created by IntelliJ IDEA.
  User: yin
  Date: 11/24/18
  Time: 6:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/sidebar.css">
    <link href="open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet">

    <title> Publish Schedule For Member </title>

</head>


<body ng-app="scheduleApp" ng-controller="getGroupMemberCtrl">

<script src="angularjslab.js"></script>
<div class="container-fluid">
    <div class="row d-flex d-md-block flex-nowrap wrapper">
        <div class="col-md-3 float-left col-1 pl-0 pr-0 collapse width show">
            <div class="list-group border-0 card text-center text-md-left">

                <div class="wrapper">
                    <!-- Sidebar --->

                    <nav id="sidebar">
                        <ul class="list-unstyled components">

                            <li class="active">

                                <a href="main_page.jsp"
                                   class="list-group-item">
                                    <span class="oi oi-home" title="home" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Main Page</span>
                                </a>
                            <li>

                            <li class="active">

                                <a href="Verify_profile_page.jsp"
                                   class="list-group-item">
                                    <span class="oi oi-person" title="person" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Edit Profile</span>
                                </a>
                            <li>


                            <li class="active">
                                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false"
                                   class="list-group-item dropdown-toggle">

                                    <span class="oi oi-project" title="project" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Schedule</span>
                                </a>
                                <ul class="collapse list-unstyled show" id="homeSubmenu">
                                    <li>
                                        <a href="#" class="list-group-item list-group-item-action">
                                            <span class="oi oi-circle-check" title="circle-check"
                                                  aria-hidden="true"></span>
                                            Current Choosing
                                        </a>

                                    </li>
                                    <li>
                                        <a href="publish_menber_page_shedual.jsp" class="list-group-item list-group-item-action"
                                           style="background-color: #80bdff">
                                            <span class="oi oi-flag" title="flag"
                                                  aria-hidden="true"></span>
                                            Published
                                        </a>
                                    </li>
                                </ul>

                            </li>



                            <li class="active">

                                <a href="login_page.jsp"
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

        <from>

            <main class="col-md-8 float-left col px-3 pl-md-5 pt-3 main">
                <a href="#" data-target="#sidebar" data-toggle="collapse"><i
                        class="fa fa-navicon fa-2x py-2 p-1"></i></a>
                <div class="page-header">
                    <h2>Published Schedule (Member)</h2>
                </div>
                <hr>


                <table class="table table-stripe">
                    <thead>
                    <br>
                    <th>Time</th>
                    <th>Monday</th>
                    <th>Tuesday</th>
                    <th>Wednesday</th>
                    <th>Thursday</th>
                    <th>Friday</th>
                    <th>Saturday</th>
                    <th>Sunday</th>
                    </tr>


                    <tr class="table-primary">


                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            8:00-9:00
                        </td>
                        <!--should be 7 username in here-MTWTFSS-->
                        <td>

                        <tr>

                        <tr ng-repeat="member89 in Member0809 ">
                            <td>
                                {{member89.usersId}}
                                {{member89.usersName }}
                            </td>

                        </tr>

                    </tr>
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>
                    <tr>
                        <td>
                            9:00-10:00
                        </td>

                    <tr ng-repeat="member910 in Member0910 ">
                        <td>
                            {{member910.usersId}}
                            {{member910.usersName }}
                        </td>

                    </tr>
                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->

                    </tr>

                    <tr>
                        <td>
                            10:00-11:00
                        </td>

                    <tr ng-repeat="member1011 in Member1011 ">
                        <td>
                            {{member1011.usersId}}
                            {{member1011.usersName }}
                        </td>

                    </tr>
                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>

                    <tr>
                        <td>
                            11:00-12:00
                        </td>
                    <tr ng-repeat="member1112 in Member1112 ">
                        <td>
                            {{member1112.usersId}}
                            {{member1112.usersName }}
                        </td>

                    </tr>
                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>

                    <tr>
                        <td>
                            12:00-13:00
                        </td>
                    <tr ng-repeat="member1213 in Member1213 ">
                        <td>
                            {{member1213.usersId}}
                            {{member1213.usersName }}
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>

                    <tr>
                        <td>
                            13:00-14:00
                        </td>
                    <tr ng-repeat="member1314 in Member1314 ">
                        <td>
                            {{member1314.usersId}}
                            {{member1314.usersName }}
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>

                    <tr>
                        <td>
                            14:00-15:00
                        </td>
                    <tr ng-repeat="member1415 in Member1415 ">
                        <td>
                            {{member1415.usersId}}
                            {{member1415.usersName }}
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>


                    <tr>
                        <td>
                            15:00-16:00
                        </td>
                    <tr ng-repeat="member1516 in Member1516 ">
                        <td>
                            {{member1516.usersId}}
                            {{member1516.usersName }}
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>


                    <tr>
                        <td>
                            16:00-17:00
                        </td>
                    <tr ng-repeat="member1617 in Member1617 ">
                        <td>
                            {{member1617.usersId}}
                            {{member1617.usersName }}
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>

                    <tr>
                        <td>
                            17:00-18:00
                        </td>
                    <tr ng-repeat="member1718 in Member1718 ">
                        <td>
                            {{member1718.usersId}}
                            {{member1718.usersName }}
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>

                    <tr>
                        <td>
                            18:00-19:00
                        </td>
                    <tr ng-repeat="member1819 in Member1819 ">
                        <td>
                            {{member1819.usersId}}
                            {{member1819.usersName }}
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>


                    </tbody>
                </table>


                <br>


            </main>

        </from>
    </div>
</div>
<script src="js/schedual_seeting.js"></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="jquery/jquery-3.2.1.js"></script>
<script src="js/Popper.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>


</body>
</html>