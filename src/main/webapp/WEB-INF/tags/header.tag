<%-- 
    Document   : header
    Created on : Oct 2, 2017, 11:40:29 PM
    Author     : Firdhaus
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- header-starts -->
<div class="sticky-header header-section ">
    <div class="header-left">
        <!--toggle button start-->
        <button id="showLeftPush"><i class="fa fa-bars"></i></button>
        <!--toggle button end-->
        <!--logo -->
        <div class="logo">
            <a href="<c:url value='/' />">
                <h1>TERANG</h1>
            </a>
        </div>
        <!--//logo-->
        <div class="clearfix"> </div>
    </div>
    <%--<div class="header-right">--%>
        <%--<div class="profile_details_left"><!--notifications of menu start -->--%>
            <%--<ul class="nofitications-dropdown">--%>
                <%--<li class="dropdown head-dpdn">--%>
                    <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue"></span></a>--%>
                    <%--<ul class="dropdown-menu">--%>
                        <%--<li>--%>
                            <%--<div class="notification_header">--%>
                                <%--&lt;%&ndash;<h3>You have {{pendingItems.PendingItemList.length}} new notification</h3>&ndash;%&gt;--%>
                            <%--</div>--%>
                        <%--</li>--%>

                        <%--&lt;%&ndash;<li ng-repeat="item in pendingItems.PendingItemList">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<a href="#" ng-click="openForm(item.Id, item.Sequence)">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<div class="notification_desc">&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<p class="noti-refno"><span>&#35;{{item.RefNo}}</span>: {{item.WFName}}</p>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<p class="noti-msg">{{item.StepName}}</p>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<div class="clearfix"></div>	&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</li>&ndash;%&gt;--%>

                        <%--<li>--%>
                            <%--<div class="notification_bottom">--%>
                                <%--<a href="#">See all notifications</a>--%>
                            <%--</div> --%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</li>	--%>
                <%--<!--                <li class="dropdown head-dpdn">--%>
                                    <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">15</span></a>--%>
                                    <%--<ul class="dropdown-menu">--%>
                                        <%--<li>--%>
                                            <%--<div class="notification_header">--%>
                                                <%--<h3>You have 8 pending task</h3>--%>
                                            <%--</div>--%>
                                        <%--</li>--%>
                                        <%--<li><a href="#">--%>
                                                <%--<div class="task-info">--%>
                                                    <%--<span class="task-desc">Database update</span><span class="percentage">40%</span>--%>
                                                    <%--<div class="clearfix"></div>	--%>
                                                <%--</div>--%>
                                                <%--<div class="progress progress-striped active">--%>
                                                    <%--<div class="bar yellow" style="width:40%;"></div>--%>
                                                <%--</div>--%>
                                            <%--</a></li>--%>
                                        <%--<li><a href="#">--%>
                                                <%--<div class="task-info">--%>
                                                    <%--<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>--%>
                                                    <%--<div class="clearfix"></div>	--%>
                                                <%--</div>--%>
                                                <%--<div class="progress progress-striped active">--%>
                                                    <%--<div class="bar green" style="width:90%;"></div>--%>
                                                <%--</div>--%>
                                            <%--</a></li>--%>
                                        <%--<li><a href="#">--%>
                                                <%--<div class="task-info">--%>
                                                    <%--<span class="task-desc">Mobile App</span><span class="percentage">33%</span>--%>
                                                    <%--<div class="clearfix"></div>	--%>
                                                <%--</div>--%>
                                                <%--<div class="progress progress-striped active">--%>
                                                    <%--<div class="bar red" style="width: 33%;"></div>--%>
                                                <%--</div>--%>
                                            <%--</a></li>--%>
                                        <%--<li><a href="#">--%>
                                                <%--<div class="task-info">--%>
                                                    <%--<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>--%>
                                                    <%--<div class="clearfix"></div>	--%>
                                                <%--</div>--%>
                                                <%--<div class="progress progress-striped active">--%>
                                                    <%--<div class="bar  blue" style="width: 80%;"></div>--%>
                                                <%--</div>--%>
                                            <%--</a></li>--%>
                                        <%--<li>--%>
                                            <%--<div class="notification_bottom">--%>
                                                <%--<a href="#">See all pending tasks</a>--%>
                                            <%--</div> --%>
                                        <%--</li>--%>
                                    <%--</ul>--%>
                                <%--</li>	-->--%>
            <%--</ul>--%>
            <%--<div class="clearfix"> </div>--%>
        <%--</div>--%>
        <%--<!--notification menu end -->--%>
        <%--<div class="profile_details">		--%>
            <%--<ul>--%>
                <%--<li class="dropdown profile_details_drop">--%>
                    <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">--%>
                        <%--<div class="profile_img">	--%>
                            <%--<span class="prfil-img"><img width="50" src="<c:url value='/content/images/no-profile.jpeg' />" alt=""> </span> --%>
                            <%--<div class="user-name">--%>
                                <%--&lt;%&ndash;<p>{{userInfo.UserInfo.Username}}</p>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<span>Administrator</span>&ndash;%&gt;--%>
                            <%--</div>--%>
                            <%--<i class="fa fa-angle-down lnr"></i>--%>
                            <%--<i class="fa fa-angle-up lnr"></i>--%>
                            <%--<div class="clearfix"></div>	--%>
                        <%--</div>	--%>
                    <%--</a>--%>
                    <%--<ul class="dropdown-menu drp-mnu">--%>
                        <%--<li> --%>
                            <%--<a href="#">--%>
                                <%--<div class="profile_menu">--%>
                                    <%--<i class="fa fa-cog"></i> Settings</div>--%>
                            <%--</a> --%>

                        <%--</li> --%>
                        <%--<li> <a href="#">--%>
                                <%--<div class="profile_menu">--%>
                                    <%--<i class="fa fa-user"></i> Profile --%>
                                <%--</div>--%>
                            <%--</a>--%>
                        <%--</li> --%>
                        <%--<li></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
            <%--</ul>--%>
        <%--</div>--%>
        <%--<div class="clearfix"> </div>				--%>
    <%--</div>--%>
    <div class="clearfix"> </div>	
</div>
<!-- //header-ends -->