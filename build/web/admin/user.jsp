<%-- 
    Document   : user
    Created on : Jun 19, 2021, 6:20:53 AM
    Author     : ngotu
--%>
<%@page import="com.tuananh.model.User"%>
<%@page import="java.util.List"%>
<%@page import="com.tuananh.dal.UserDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <title>User List</title>
        <!-- Favicon -->
        <link
            rel="shortcut icon"
            href="https://iqonic.design/themes/streamitnew/dashboard/html/assets/images//favicon.ico"
            />
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <!--datatable CSS -->
        <link rel="stylesheet" href="assets/css/dataTables.bootstrap4.min.css" />
        <!-- Typography CSS -->
        <link rel="stylesheet" href="assets/css/typography.css" />
        <!-- Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css" />
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="assets/css/responsive.css" />
    </head>
    <body>
        <%
            UserDAO ud = new UserDAO();
            List<User> lu = ud.getAllUser();
            pageContext.setAttribute("listuser", lu);
        %>
        <!-- loader Start -->
        <div id="loading">
            <div id="loading-center"></div>
        </div>
        <!-- loader END -->
        <!-- Wrapper Start -->
        <div class="wrapper">
            <!-- Sidebar-->
            <jsp:include page="../common/admin_sidebar.jsp" ></jsp:include>
                <!-- TOP Nav Bar -->
            <jsp:include page="../common/admin_topnavbar.jsp" ></jsp:include>
                <!-- TOP Nav Bar END -->
                <!-- Page Content  -->
                <div id="content-page" class="content-page">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="iq-card">
                                    <div class="iq-card-header d-flex justify-content-between">
                                        <div class="iq-header-title">
                                            <h4 class="card-title">User Lists</h4>
                                        </div>
                                    </div>
                                    <div class="iq-card-body">
                                        <div class="table-view">
                                            <table
                                                class="data-tables table movie_table"
                                                style="width: 100%"
                                                >
                                                <thead>
                                                    <tr>
                                                        <th style="width: 10%">ID</th>
                                                        <th style="width: 10%">Avatar</th>
                                                        <th style="width: 20%">Email</th>
                                                        <th style="width: 20%">Name</th>
                                                        <th style="width: 10%">Username</th>
                                                        <th style="width: 10%">Role</th>
                                                        <th style="width: 10%">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${listuser}" var="user">
                                                    <tr>
                                                        <td>${user.getId()}</td>
                                                        <td><img src="${user.getAvatar()}" class="img-fluid avatar-50" alt="author-profile" /></td>
                                                        <td>${user.getEmail()}</td>
                                                        <td>${user.getName()}</td>
                                                        <td>${user.getUsername()}</td>
                                                        <c:choose>
                                                            <c:when test="${user.getRole().trim()=='admin'}">
                                                                <td><span class="badge iq-bg-primary">${user.getRole()}</span></td>
                                                                </c:when>    
                                                                <c:otherwise>
                                                                <td><span class="badge iq-bg-success">${user.getRole()}</span></td>
                                                                </c:otherwise>
                                                            </c:choose>

                                                        <td>
                                                            <div class="flex align-items-center list-user-action">
                                                                <a class="iq-bg-primary" data-toggle="tooltip modal" data-placement="top" title="" data-original-title="Delete" href="../remove"><i class="ri-delete-bin-line"></i></a>
                                                            </div>
                                                        </td>
                                                    </tr>                                        
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Wrapper END -->
        <!-- Footer -->
        <jsp:include page="../common/admin_footer.jsp" ></jsp:include>
        <!-- Footer END -->
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script
            data-cfasync="false"
            src="cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"
        ></script>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.dataTables.min.js"></script>
        <script src="assets/js/dataTables.bootstrap4.min.js"></script>
        <!-- Appear JavaScript -->
        <script src="assets/js/jquery.appear.js"></script>
        <!-- Countdown JavaScript -->
        <script src="assets/js/countdown.min.js"></script>
        <!-- Counterup JavaScript -->
        <script src="assets/js/waypoints.min.js"></script>
        <script src="assets/js/jquery.counterup.min.js"></script>
        <!-- Wow JavaScript -->
        <script src="assets/js/wow.min.js"></script>
        <!-- Slick JavaScript -->
        <script src="assets/js/slick.min.js"></script>
        <!-- Owl Carousel JavaScript -->
        <script src="assets/js/owl.carousel.min.js"></script>
        <!-- Magnific Popup JavaScript -->
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <!-- Smooth Scrollbar JavaScript -->
        <script src="assets/js/smooth-scrollbar.js"></script>
        <!-- Chart Custom JavaScript -->
        <script src="assets/js/chart-custom.js"></script>
        <!-- Custom JavaScript -->
        <script src="assets/js/custom.js"></script>
        <script>
            function myFunction() {

                var element = document.getElementById("i-user");
                element.classList.add("active");
                element.classList.add("active-menu");
            }
            myFunction();
        </script>
    </body>
</html>
