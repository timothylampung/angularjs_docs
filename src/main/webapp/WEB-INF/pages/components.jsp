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

    <div id="page-wrapper" ng-controller="ComponentController">
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
                        <div class="forms form-horizontal">

                            <fieldset>
                                <legend><h4>Column Form With Validation</h4></legend>
                                <form>

                                    <div class="form-group">

                                        <div class="col-md-3"><label class="control-label"
                                                                     for="identity_no">Name</label>
                                            <span class="asterisk">*</span>
                                        </div>
                                        <div class="col-md-3">
                                            <input
                                                    required
                                                    ng-model="value.identityNo"
                                                    type="text" class="form-control"
                                                    name="identity_no"
                                                    id="name">
                                        </div>

                                        <div class="col-md-3"><label class="control-label" for="identity_no">I/C</label>
                                            <span class="asterisk">*</span>
                                        </div>

                                        <div class="col-md-3">
                                            <input
                                                    placeholder="length limited to 12"
                                                    required
                                                    ng-model="value.identityNo"
                                                    type="text"
                                                    class="form-control"
                                                    name="identity_no"
                                                    id="identity_no"
                                                    maxlength="12">
                                        </div>
                                    </div>

                                    <div class="text-right">
                                        <button class="btn btn-danger">Cancel</button>
                                        <button ng-click="foo()" type='submit' class="btn btn-default">Submit</button>
                                    </div>

                                </form>
                            </fieldset>

                            <br>

                            <fieldset>
                                <legend><h4>Row Form With Validation</h4></legend>
                                <form>
                                    <div class="form-group">

                                        <div class="col-md-3"><label class="control-label"
                                                                     for="identity_no">Name</label>
                                            <span class="asterisk">*</span>
                                        </div>
                                        <div class="col-md-3">
                                            <input
                                                    required
                                                    ng-model="value.identityNo"
                                                    type="text"
                                                    class="form-control"
                                                    name="identity_no"
                                                    id="name">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-3"><label class="control-label" for="identity_no">I/C</label>
                                            <span class="asterisk">*</span>
                                        </div>

                                        <div class="col-md-3">
                                            <input
                                                    placeholder="length limited to 12"
                                                    required
                                                    ng-model="value.identityNo"
                                                    type="text"
                                                    class="form-control"
                                                    name="identity_no"
                                                    id="identity_no"
                                                    maxlength="12">
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <button class="btn btn-danger">Cancel</button>
                                        <button type='submit' class="btn btn-default">Submit</button>
                                    </div>

                                </form>
                            </fieldset>

                            <br>

                            <fieldset>
                                <legend><h4>Buttons</h4></legend>
                                <div class="form-group">
                                    <div class="col-lg-1"><a class="btn btn-primary">PRIMARY</a></div>
                                    <div class="col-lg-1"><a class="btn btn-danger">DANGER</a></div>
                                    <div class="col-lg-1"><a class="btn btn-block">BLOCK</a></div>
                                    <div class="col-lg-1"><a class="btn btn-circle">CIR</a></div>
                                    <div class="col-lg-1"><a class="btn btn-default">DEFAULT</a></div>
                                    <div class="col-lg-1"><a class="btn btn-file">FILE</a></div>
                                    <div class="col-lg-1"><a class="btn btn-link">LINK</a></div>
                                    <div class="col-lg-1"><a class="btn btn-warning">WARNING</a></div>
                                    <div class="col-lg-1"><a class="btn btn-success">SUCCESS</a></div>
                                </div>
                            </fieldset>


                            <br>

                            <fieldset>
                                <legend><h4>Row Form With Validation</h4></legend>
                                <form>
                                    <div class="form-group">

                                        <div class="col-md-3"><label class="control-label"
                                                                     for="identity_no">Name</label>
                                            <span class="asterisk">*</span>
                                        </div>
                                        <div class="col-md-3">
                                            <input
                                                    required
                                                    ng-model="value.identityNo"
                                                    type="text"
                                                    class="form-control"
                                                    name="identity_no"
                                                    id="name">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-3"><label class="control-label" for="identity_no">I/C</label>
                                            <span class="asterisk">*</span>
                                        </div>

                                        <div class="col-md-3">
                                            <input
                                                    placeholder="length limited to 12"
                                                    required
                                                    ng-model="value.identityNo"
                                                    type="text"
                                                    class="form-control"
                                                    name="identity_no"
                                                    id="identity_no"
                                                    maxlength="12">
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <button class="btn btn-danger">Cancel</button>
                                        <button type='submit' class="btn btn-default">Submit</button>
                                    </div>

                                </form>
                            </fieldset>



                        </div>
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
