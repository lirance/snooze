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


<body ng-app="myApp" ng-controller="">

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
                                    <span class="d-none d-inline">Group</span>
                                </a>
                                <ul class="collapse list-unstyled" id="homeSubmenu">
                                    <li>
                                        <a href="#" class="list-group-item list-group-item-action" style="background-color: #80bdff">
                                            <span class="oi oi-circle-check" title="circle-check"
                                                  aria-hidden="true"></span>
                                            Current Choosing
                                        </a>

                                    </li>
                                    <li>
                                        <a href="#" class="list-group-item list-group-item-action">
                                            <span class="oi oi-flag" title="flag"
                                                  aria-hidden="true"></span>
                                            Published
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

        <from>
            <main class="col-md-8 float-left col px-3 pl-md-5 pt-3 main">
                <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
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

                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="108",ng-false-value="false",ng-init="false">

                                <%--<input type="checkbox" id="108">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="208",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="208">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="308",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="308">--%>

                            </div>
                        </td> <td>
                        <div class="checkbox mb-3">
                            <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="408",ng-false-value="false",ng-init="false">
                            <%--<input type="checkbox" id="408">--%>

                        </div>
                    </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="508",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="508">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="608",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="608">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="708",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="708">--%>

                            </div>
                        </td>



                    </tr>
                    <tr class="table-secondary">
                        <td>09:00-10:00</td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="109",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="109">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="209",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="209">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="309",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="309">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="409",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="409">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="509",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="509">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="609",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="609">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="709",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="709">--%>

                            </div>
                        </td>


                    </tr>

                    <tr class="table-success">
                        <td>10:00-11:00</td>

                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="110",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="110">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="210",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="210">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="310",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="310">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="410",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="410">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="510",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="510">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="610",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="610">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="710",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="710">--%>

                            </div>
                        </td>


                    </tr>

                    <tr class="table-danger">
                        <td>11:00-12:00</td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="111",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="111">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="211",ng-false-value="false",ng-init="false">
                                <%--<input type="checkbox" id="211">--%>

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="311",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="311">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="411",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="411">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="511",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="511">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="611",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="611">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="711",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="711">

                            </div>
                        </td>


                    </tr>
                    <tr class="table-warning">

                        <td>12:00-13:00</td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="112",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="112">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="212",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="212">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="312",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="312">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="412",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="412">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="512",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="512">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="612",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="612">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="712",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="712">

                            </div>
                        </td>

                    </tr>
                    <tr class="table-info">
                        <td>13:00-14:00</td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="113",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="113">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="213",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="213">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="313",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="313">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="413",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="413">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="513",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="513">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="613",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="613">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="713",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="713">

                            </div>
                        </td>

                    </tr>
                    <tr class="table-light">
                        <td>14:00-15:00</td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="114",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="114">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="214",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="214">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="314",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="314">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="414",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="414">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="514",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="514">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="614",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="614">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="714",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="714">

                            </div>
                        </td>



                    </tr>
                    <tr class="table-primary">
                        <td>15:00-16:00</td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="115",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="115">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="215",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="215">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="315",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="315">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="415",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="415">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="515",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="515">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="615",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="615">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="715",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="715">

                            </div>
                        </td>



                    </tr>
                    <tr class="table-secondary">
                        <td>16:00-17:00</td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="116",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="116">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="216",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="216">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="316",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="316"  >

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="416",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="416">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="516",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="516">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="616",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="616">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="716",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="716">

                            </div>
                        </td>


                    </tr>
                    <tr class="table-success">

                        <td>17:00-18:00</td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="117",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="117">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="217",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="217">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="317",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="317">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="417",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="417">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="517",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="517">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="617",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="617">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="717",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="717">

                            </div>
                        </td>

                    </tr>
                    <tr class="table-danger">
                        <td>18:00-19:00</td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="118",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="118">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="218",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="218">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="318",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="318">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="418",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="418">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="518",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="518">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="618",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="618">

                            </div>
                        </td>
                        <td>
                            <div class="checkbox mb-3">
                                <input ng-model="selectTime",id="selectTime",type="checkbox",ng-true-value="718",ng-false-value="false",ng-init="false">
                                <input type="checkbox" id="718">

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
                        </div>
                        <div class="col-lg">
                        </div>
                        <div class="col-lg">

                            <button class="btn btn-lg btn-success btn-block" style="width: 80%" align="center"
                                    type="submit">Submit
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