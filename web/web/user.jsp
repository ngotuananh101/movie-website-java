<%-- 
    Document   : user
    Created on : Jul 20, 2021, 1:04:07 PM
    Author     : ngotu
--%>

<%@page import="com.tuananh.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    User u = (User) session.getAttribute("user");
    pageContext.setAttribute("userinfo", u);
    System.out.println(u.toString());

%>
<!doctype html>
<html lang="en-US">
    <head>
        <!-- Required meta tags -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Edit Profile</title>
        <!-- Favicon -->
        <link rel="shortcut icon" href="../common/images/favicon.ico" />
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../common/css/bootstrap.min.css" />
        <!-- Typography CSS -->
        <link rel="stylesheet" href="../common/css/typography.css">
        <!-- Style -->
        <link rel="stylesheet" href="../common/css/style.css" />
        <!-- Responsive -->
        <link rel="stylesheet" href="../common/css/responsive.css" />
    </head>

    <body>
        <!-- Header -->
        <jsp:include page="../common/web/header.jsp" ></jsp:include>
        <!-- Header End -->
        <!-- MainContent -->
        <section class="m-profile manage-p">
            <div class="container h-100">
                <div class="row align-items-center justify-content-center h-100">
                    <div class="col-lg-10">
                        <div class="sign-user_card">
                            <div class="row">
                                <div class="col-lg-2">
                                    <div class="upload_profile d-inline-block">
                                        <img src="<%=u.getAvatar()%>" class="profile-pic rounded-circle img-fluid" alt="user">
                                        <div class="p-image">
                                            <i class="ri-pencil-line upload-button"></i>
                                            <input class="file-upload" type="file" accept="image/*">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-10 device-margin">
                                    <div class="profile-from">
                                        <h4 class="mb-3">Manage Profile</h4>
                                        <form class="mt-4" action="../edit?type=user&id=<%=u.getId()%>" method="POST">
                                            <div class="form-group">
                                                <label>Name</label>
                                                <input type="text" class="form-control mb-0" id="exampleInputl2"
                                                       placeholder="Enter Your Name" autocomplete="off" value="<%=u.getName()%>" name="name" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input type="email" class="form-control mb-0" placeholder="Enter Email" name="email" value="<%=u.getEmail()%>"
                                                       required>
                                            </div>
                                            <div class="form-group">
                                                <label>Username</label>
                                                <input type="text" class="form-control mb-0" placeholder="Enter Username" name="username" value="<%=u.getUsername()%>"
                                                       required>
                                            </div>
                                            <div class="d-flex">
                                                <button class="btn btn-hover" type="submit">Save</button>
                                                <a href="changepass.jsp" class="btn btn-link">Change Password</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="../common/web/footer.jsp" ></jsp:include>
        <!-- MainContent End-->
        <!-- back-to-top -->
        <div id="back-to-top">
            <a class="top" href="#top" id="top"> <i class="fa fa-angle-up"></i> </a>
        </div>
        <!-- back-to-top End -->
        <!-- jQuery, Popper JS -->
        <script src="../common/js/jquery-3.4.1.min.js"></script>
        <script src="../common/js/popper.min.js"></script>
        <!-- Bootstrap JS -->
        <script src="../common/js/bootstrap.min.js"></script>
        <!-- Slick JS -->
        <script src="../common/js/slick.min.js"></script>
        <!-- owl carousel Js -->
        <script src="../common/js/owl.carousel.min.js"></script>
        <!-- select2 Js -->
        <script src="../common/js/select2.min.js"></script>
        <!-- Magnific Popup-->
        <script src="../common/js/jquery.magnific-popup.min.js"></script>
        <!-- Flatpickr JavaScript -->
        <script src="../common/js/flatpickr.min.js"></script>
        <!-- Slick Animation-->
        <script src="../common/js/slick-animation.min.js"></script>
        <!-- Custom JS-->
        <script src="../common/js/custom.js"></script>
    </body>
</html>
