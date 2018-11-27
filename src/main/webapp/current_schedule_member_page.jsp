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
    <link rel="stylesheet" href="bootstrap/css/sidebar.css">
    <link href="open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet">

    <title> Current Schedule For Member </title>

</head>


<body ng-app="scheduleApp" ng-controller="selectTimeCtrl">
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
                                        <a href="current_schedule_member_page.jsp" class="list-group-item list-group-item-action"
                                           style="background-color: #80bdff">
                                            <span class="oi oi-circle-check" title="circle-check"
                                                  aria-hidden="true"></span>
                                            Current Choosing
                                        </a>

                                    </li>
                                    <li>
                                        <a href="publish_menber_page_shedual.jsp" class="list-group-item list-group-item-action">
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

        <from >
            <main class="col-md-8 float-left col px-3 pl-md-5 pt-3 main">
                <a href="#" data-target="#sidebar" data-toggle="collapse"><i
                        class="fa fa-navicon fa-2x py-2 p-1"></i></a>
                <div class="page-header">
                    <h2>Current Schedule (Member)</h2>
                </div>
                <hr>


                <br>


                <table class="table table-bordered">
                    <thead>
                    <tr class="table-light">
                        <th scope="col">Time</th>
                        <th scope="col">Monday</th>
                        <th scope="col">Tuesday</th>
                        <th scope="col">Wednesday</th>
                        <th scope="col">Thursday</th>
                        <th scope="col">Friday</th>
                        <th scope="col">Saturday</th>
                        <th scope="col">Sunday</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="table-primary">

                        <td>08:00-09:00</td>

                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="108" name="Time" value="108">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="208" name="Time" value="208">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="308" name="Time" value="308">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="408" name="Time" value="408">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="508" name="Time" value="508">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="608" name="Time" value="608">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="708" name="Time" value="708">

                            </div>
                        </td>


                    </tr>
                    <tr class="table-secondary">
                        <td>09:00-10:00</td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="109" name="Time" value="109">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="209" name="Time" value="209">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="309" name="Time" value="309">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="409" name="Time" value="409">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="509" name="Time" value="509">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="609" name="Time" value="609">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="709" name="Time" value="709">

                            </div>
                        </td>


                    </tr>

                    <tr class="table-success">
                        <td>10:00-11:00</td>

                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="110" name="Time" value="110">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="210" name="Time" value="210" >

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="310" name="Time" value="310">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="410" name="Time" value="410">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="510" name="Time" value="510">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="610" name="Time" value="610">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="710" name="Time" value="710">

                            </div>
                        </td>


                    </tr>

                    <tr class="table-danger">
                        <td>11:00-12:00</td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="111" name="Time" value="111">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="211" name="Time" value="211">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="311" name="Time" value="311">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="411" name="Time" value="411">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="511" name="Time" value="511">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="611" name="Time" value="611">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="711" name="Time" value="711">

                            </div>
                        </td>


                    </tr>
                    <tr class="table-warning">

                        <td>12:00-13:00</td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="112" name="Time" value="112">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="212" name="Time" value="212">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="312" name="Time" value="312">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="412" name="Time" value="412">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="512" name="Time" value="512">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="612" name="Time" value="612">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="712" name="Time" value="712">

                            </div>
                        </td>

                    </tr>
                    <tr class="table-info">
                        <td>13:00-14:00</td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="113" name="Time" value="113">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="213" name="Time" value="213">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="313" name="Time" value="313">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="413" name="Time" value="413">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="513" name="Time" value="513">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="613" name="Time" value="613">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="713" name="Time" value="713">

                            </div>
                        </td>

                    </tr>
                    <tr class="table-light">
                        <td>14:00-15:00</td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="114" name="Time" value="114">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="214" name="Time" value="214">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="314" name="Time" value="314">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="414" name="Time" value="414">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="514" name="Time" value="514">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="614" name="Time" value="614">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="714" name="Time" value="714">

                            </div>
                        </td>


                    </tr>
                    <tr class="table-primary">
                        <td>15:00-16:00</td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="115" name="Time" value="115">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="215" name="Time" value="215">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="315" name="Time" value="315">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="415" name="Time" value="415">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="515" name="Time" value="515">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="615" name="Time" value="615">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="715" name="Time" value="715">

                            </div>
                        </td>


                    </tr>
                    <tr class="table-secondary">
                        <td>16:00-17:00</td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="116" name="Time" value="116">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="216" name="Time" value="216">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="316" name="Time" value="316">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="416" name="Time" value="416">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="516" name="Time" value="516">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="616" name="Time" value="616">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="716" name="Time" value="716">

                            </div>
                        </td>


                    </tr>
                    <tr class="table-success">

                        <td>17:00-18:00</td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="117" name="Time" value="117">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="217" name="Time" value="217">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="317" name="Time" value="317">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="417" name="Time" value="417">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="517" name="Time" value="517">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="617" name="Time" value="617">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="717" name="Time" value="717">

                            </div>
                        </td>

                    </tr>
                    <tr class="table-danger">
                        <td>18:00-19:00</td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="118" name="Time" value="118">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="218" name="Time" value="218">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="318" name="Time" value="318">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="418" name="Time" value="418">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="518" name="Time" value="518">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="618" name="Time" value="618">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">

                                <input type="checkbox" id="718" name="Time" value="718">

                            </div>
                        </td>

                    </tr>


                    </tr>


                    </tbody>
                </table>


                <br>



                    <div class="container">
                        <div class="row">
                            <div class="col-lg">

                                <a href="#" class="btn btn-success btn-lg"
                                   style="width:80%" role="button" aria-disabled="true"> Back</a>
                            </div>
                            <div class="col-lg">

                            </div>

                            <div class="col-lg">

                                <button class="btn btn-lg btn-success btn-block" style="width: 80%" align="center"
                                        type="submit" ng-click="show()">Submit
                                </button>


                            </div>

                        </div>
                    </div>



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