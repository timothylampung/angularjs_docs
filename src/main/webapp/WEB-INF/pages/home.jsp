<%-- 
    Document   : main_module
    Created on : Feb 6, 2018, 7:32:14 PM
    Author     : Miskinah.bahrom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tut" tagdir="/WEB-INF/tags" %>

<!DOCTYPE HTML>
<html ng-app="Tutorial">
<head>
    <title>TITLE - ${title}</title>
    <tut:css/>
</head>
<body class="cbp-spmenu-push">
<div class="main-content">
    <tut:sidebar/>
    <tut:header/>

    <div id="page-wrapper">
        <div class="main-page">

            <div class="dashboard-box">
                <h3 class="dashboard-title">${title}</h3>
                <div class="breadcrumb-box">
                    <ol class="breadcrumb no-border">
                        <li><a ng-href="{{baseURL}}"><i class="fa fa-home icon-right"></i>Home</a></li>
                        <li><a ng-href="{{baseURL}}">${title}</a></li>
                        <li><a ng-href="{{baseURL}}/component">components</a></li>
                    </ol>
                </div>
            </div>


            <div class="content">

                <div class="blank-page widget-shadow scroll">
                    <div class="rows">
                        <div class="forms form-horizontal"></div>
                    </div>
                </div>


            </div>
        </div>
    </div>
    <div class="clearfix"></div>


    <tut:footer/>
</div>
<tut:js/>
<tut:angularjs/>
</body>
</html>
