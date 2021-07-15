<%-- 
    Document   : index
    Created on : Jun 5, 2021, 1:08:21 AM
    Author     : ngotu
--%>

<%@page import="com.tuananh.controller.Count"%>
<%@page import="com.tuananh.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Admin Dashboard - Netflix</title>
        <!-- Favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico" />
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!--datatable CSS -->
        <link rel="stylesheet" href="assets/css/dataTables.bootstrap4.min.css">
        <!-- Typography CSS -->
        <link rel="stylesheet" href="assets/css/typography.css">
        <!-- Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="assets/css/responsive.css">
    </head>
    <body>
        <%
            Count count = new Count();
            User u = (User) session.getAttribute("user");
        %>


        <!-- loader Start -->
        <div id="loading">
            <div id="loading-center">
            </div>
        </div>
        <!-- loader END -->
        <!-- Wrapper Start -->
        <div class="wrapper">
            <jsp:include page="../common/admin_sidebar.jsp" ></jsp:include>
                <!-- TOP Nav Bar -->
            <jsp:include page="../common/admin_topnavbar.jsp" ></jsp:include>
                <!-- TOP Nav Bar END -->
                <!-- Page Content  -->
                <div id="content-page" class="content-page">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-sm-6 col-lg-6 col-xl-3">
                                        <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                                            <div class="iq-card-body">
                                                <div class="d-flex align-items-center justify-content-between">
                                                    <div class="iq-cart-text text-capitalize">
                                                        <p class="mb-0">
                                                            Total view
                                                        </p>
                                                    </div>
                                                    <div class="icon iq-icon-box-top rounded-circle bg-primary">
                                                        <i class="las la-eye"></i>
                                                    </div>
                                                </div>
                                                <div class="d-flex align-items-center justify-content-between mt-3">
                                                    <h4 class=" mb-0"><%=count.count_view()%></h4>
                                                <!--                                 <p class="mb-0 text-primary"><span><i class="fa fa-caret-down mr-2"></i></span>35%</p>-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-6 col-xl-3">
                                    <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                                        <div class="iq-card-body">
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="iq-cart-text text-capitalize">
                                                    <p class="mb-0 font-size-14">
                                                        Total movie
                                                    </p>
                                                </div>
                                                <div class="icon iq-icon-box-top rounded-circle bg-warning">
                                                    <i class="lar la-star"></i>
                                                </div>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-3">
                                                <h4 class=" mb-0"><%=count.count_movie()%></h4>
                                                <!--                                 <p class="mb-0 text-warning"><span><i class="fa fa-caret-up mr-2"></i></span>50%</p>-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-6 col-xl-3">
                                    <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                                        <div class="iq-card-body">
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="iq-cart-text text-capitalize">
                                                    <p class="mb-0 font-size-14">
                                                        Total live channel
                                                    </p>
                                                </div>
                                                <div class="icon iq-icon-box-top rounded-circle bg-info">
                                                    <i class="las la-download"></i>
                                                </div>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-3">
                                                <h4 class=" mb-0"><%=count.count_tv()%></h4>
                                                <!--                                 <p class="mb-0 text-info"><span><i class="fa fa-caret-up mr-2"></i></span>80%</p>-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-6 col-xl-3">
                                    <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                                        <div class="iq-card-body">
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="iq-cart-text text-uppercase">
                                                    <p class="mb-0 font-size-14">
                                                        Total user
                                                    </p>
                                                </div>
                                                <div class="icon iq-icon-box-top rounded-circle bg-success">
                                                    <i class="lar la-user"></i>
                                                </div>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-3">
                                                <h4 class=" mb-0"><%=count.count_user()%></h4>
                                                <!--                                 <p class="mb-0 text-success"><span><i class="fa fa-caret-up mr-2"></i></span>80%</p>-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="iq-card">
                                <div class="iq-card-header d-flex justify-content-between align-items-center">
                                    <div class="iq-header-title">
                                        <h4 class="card-title">Top Rated Item </h4>
                                    </div>
                                    <div id="top-rated-item-slick-arrow" class="slick-aerrow-block"></div>
                                </div>
                                <div class="iq-card-body">
                                    <ul class="list-unstyled row top-rated-item mb-0">
                                        <li class="col-sm-6 col-lg-4 col-xl-3 iq-rated-box">
                                            <div class="iq-card mb-0">
                                                <div class="iq-card-body p-0">
                                                    <div class="iq-thumb">
                                                        <a href="javascript:void(0)">
                                                            <img src="../assets/images/dashboard/01.jpg" class="img-fluid w-100 img-border-radius" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="iq-feature-list">
                                                        <h6 class="font-weight-600 mb-0">The Last Breath</h6>
                                                        <p class="mb-0 mt-2">T.v show</p>
                                                        <div class="d-flex align-items-center my-2">
                                                            <p class="mb-0 mr-2"><i class="lar la-eye mr-1"></i> 134</p>
                                                            <p class="mb-0 "><i class="las la-download ml-2"></i> 30 k</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-sm-6 col-lg-4 col-xl-3 iq-rated-box">
                                            <div class="iq-card mb-0">
                                                <div class="iq-card-body p-0">
                                                    <div class="iq-thumb">
                                                        <a href="javascript:void(0)">
                                                            <img src="../assets/images/dashboard/02.jpg" class="img-fluid w-100 img-border-radius" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="iq-feature-list">
                                                        <h6 class="font-weight-600 mb-0">Last Night</h6>
                                                        <p class="mb-0 mt-2">Movie</p>
                                                        <div class="d-flex align-items-center my-2">
                                                            <p class="mb-0 mr-2"><i class="lar la-eye mr-1"></i> 133</p>
                                                            <p class="mb-0 "><i class="las la-download ml-2"></i> 20 k</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-sm-6 col-lg-4 col-xl-3 iq-rated-box">
                                            <div class="iq-card mb-0">
                                                <div class="iq-card-body p-0">
                                                    <div class="iq-thumb">
                                                        <a href="javascript:void(0)">
                                                            <img src="../assets/images/dashboard/03.jpg" class="img-fluid w-100 img-border-radius" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="iq-feature-list">
                                                        <h6 class="font-weight-600 mb-0">Jeon Woochie</h6>
                                                        <p class="mb-0 mt-2">Movie</p>
                                                        <div class="d-flex align-items-center my-2">
                                                            <p class="mb-0 mr-2"><i class="lar la-eye mr-1"></i> 222</p>
                                                            <p class="mb-0 "><i class="las la-download ml-2"></i> 40 k</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-sm-6 col-lg-4 col-xl-3 iq-rated-box">
                                            <div class="iq-card mb-0">
                                                <div class="iq-card-body p-0">
                                                    <div class="iq-thumb">
                                                        <a href="javascript:void(0)">
                                                            <img src="../assets/images/dashboard/04.jpg" class="img-fluid w-100 img-border-radius" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="iq-feature-list">
                                                        <h6 class="font-weight-600 mb-0">Dino Land</h6>
                                                        <p class="mb-0 mt-2">T.v show</p>
                                                        <div class="d-flex align-items-center my-2">
                                                            <p class="mb-0 mr-2"><i class="lar la-eye mr-1"></i> 122</p>
                                                            <p class="mb-0 "><i class="las la-download ml-2"></i> 25 k</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-sm-6 col-lg-4 col-xl-3 iq-rated-box">
                                            <div class="iq-card mb-0">
                                                <div class="iq-card-body p-0">
                                                    <div class="iq-thumb">
                                                        <a href="javascript:void(0)">
                                                            <img src="../assets/images/dashboard/05.jpg" class="img-fluid w-100 img-border-radius" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="iq-feature-list">
                                                        <h6 class="font-weight-600 mb-0">Last Race</h6>
                                                        <p class="mb-0 mt-2">T.v show</p>
                                                        <div class="d-flex align-items-center my-2">
                                                            <p class="mb-0 mr-2"><i class="lar la-eye mr-1"></i> 144</p>
                                                            <p class="mb-0 "><i class="las la-download ml-2"></i> 35 k</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-sm-6 col-lg-4 col-xl-3 iq-rated-box">
                                            <div class="iq-card mb-0">
                                                <div class="iq-card-body p-0">
                                                    <div class="iq-thumb">
                                                        <a href="javascript:void(0)">
                                                            <img src="../assets/images/dashboard/06.jpg" class="img-fluid w-100 img-border-radius" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="iq-feature-list">
                                                        <h6 class="font-weight-600 mb-0">Opend Dead Shot</h6>
                                                        <p class="mb-0 mt-2">T.v show</p>
                                                        <div class="d-flex align-items-center my-2">
                                                            <p class="mb-0 mr-2"><i class="lar la-eye mr-1"></i> 134</p>
                                                            <p class="mb-0 "><i class="las la-download ml-2"></i> 30 k</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12  col-lg-4">
                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                                <div class="iq-card-header d-flex align-items-center justify-content-between">
                                    <div class="iq-header-title">
                                        <h4 class="card-title">Categories</h4>
                                    </div>
                                </div>
                                <div class="iq-card-body p-0">
                                    <div id="view-chart-03"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                                <div class="iq-card-header d-flex align-items-center justify-content-between">
                                    <div class="iq-header-title">
                                        <h4 class="card-title">Top Category</h4>
                                    </div>
                                    <div class="iq-card-header-toolbar d-flex align-items-center seasons">
                                        <div class="iq-custom-select d-inline-block sea-epi s-margin">
                                            <select name="cars" class="form-control season-select">
                                                <option value="season1">Today</option>
                                                <option value="season2">This Week</option>
                                                <option value="season2">This Month</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="iq-card-body row align-items-center">
                                    <div class="col-lg-7">
                                        <div class="row list-unstyled mb-0 pb-0">
                                            <div class="col-sm-6 col-md-4 col-lg-6 mb-3">
                                                <div class="iq-progress-bar progress-bar-vertical iq-bg-primary">
                                                    <span class="bg-primary" data-percent="100" style="transition: height 2s ease 0s; width: 100%; height: 40%;"></span>
                                                </div>
                                                <div class="media align-items-center">
                                                    <div class="iq-icon-box-view rounded mr-3 iq-bg-primary"><i class="las la-film font-size-32"></i></div>
                                                    <div class="media-body text-white">
                                                        <h6 class="mb-0 font-size-14 line-height">Actions</h6>
                                                        <small class="text-primary mb-0">+34%</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-4 col-lg-6 mb-3">
                                                <div class="iq-progress-bar progress-bar-vertical iq-bg-secondary">
                                                    <span class="bg-secondary" data-percent="100" style="transition: height 2s ease 0s; width: 100%; height: 70%;"></span>
                                                </div>
                                                <div class="media align-items-center">
                                                    <div class="iq-icon-box-view rounded mr-3 iq-bg-secondary"><i class="las la-laugh-squint font-size-32"></i></div>
                                                    <div class="media-body text-white">
                                                        <p class="mb-0 font-size-14 line-height">Comedy</p>
                                                        <small class="text-secondary mb-0">+44%</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-4 col-lg-6 mb-3">
                                                <div class="iq-progress-bar progress-bar-vertical iq-bg-info">
                                                    <span class="bg-info" data-percent="100" style="transition: height 2s ease 0s; width: 100%; height: 40%;"></span>
                                                </div>
                                                <div class="media align-items-center">
                                                    <div class="iq-icon-box-view rounded mr-3 iq-bg-info"><i class="las la-skull-crossbones font-size-32"></i></div>
                                                    <div class="media-body text-white">
                                                        <p class="mb-0 font-size-14 line-height">Horror</p>
                                                        <small class="text-info mb-0">+56%</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-4 col-lg-6 mb-3">
                                                <div class="iq-progress-bar progress-bar-vertical iq-bg-warning">
                                                    <span class="bg-warning" data-percent="100" style="transition: height 2s ease 0s; width: 40%; height: 40%;"></span>
                                                </div>
                                                <div class="media align-items-center">
                                                    <div class="iq-icon-box-view rounded mr-3 iq-bg-warning"><i class="las la-theater-masks font-size-32"></i></div>
                                                    <div class="media-body text-white">
                                                        <p class="mb-0 font-size-14 line-height">Drama</p>
                                                        <small class="text-warning mb-0">+65%</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-4 col-lg-6 mb-lg-0 mb-3">
                                                <div class="iq-progress-bar progress-bar-vertical iq-bg-success">
                                                    <span class="bg-success" data-percent="100" style="transition: height 2s ease 0s; width: 60%; height: 60%;"></span>
                                                </div>
                                                <div class="media align-items-center mb-lg-0 mb-3">
                                                    <div class="iq-icon-box-view rounded mr-3 iq-bg-success"><i class="las la-child font-size-32"></i></div>
                                                    <div class="media-body text-white">
                                                        <p class="mb-0 font-size-14 line-height">Kids</p>
                                                        <small class="text-success mb-0">+74%</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-4 col-lg-6  mb-lg-0 mb-3">
                                                <div class="iq-progress-bar progress-bar-vertical iq-bg-danger">
                                                    <span class="bg-danger" data-percent="100" style="transition: height 2s ease 0s; width: 80%; height: 80%;"></span>
                                                </div>
                                                <div class="media align-items-center">
                                                    <div class="iq-icon-box-view rounded mr-3 iq-bg-danger"><i class="las la-grin-beam font-size-32"></i></div>
                                                    <div class="media-body text-white">
                                                        <p class="mb-0 font-size-14 line-height">Thrilled</p>
                                                        <small class="text-danger mb-0">+40%</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5">
                                        <div id="view-chart-02" class="view-cahrt-02"></div>
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
        <jsp:include page="../common/admin_footer.jsp" ></jsp:include>r END -->
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.dataTables.min.js"></script>
        <script src="assets/js/dataTables.bootstrap4.min.js"></script>
        <!-- Appear JavaScript -->
        <script src="assets/js/jquery.appear.js"></script>
        <!-- Countdown JavaScript -->
        <script src="assets/js/countdown.min.js"></script>
        <!-- Select2 JavaScript -->
        <script src="assets/js/select2.min.js"></script>
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
        <!-- apex Custom JavaScript -->
        <script src="assets/js/apexcharts.js"></script>
        <!-- Chart Custom JavaScript -->
        <script src="assets/js/chart-custom.js"></script>
        <!-- Custom JavaScript -->
        <script src="assets/js/custom.js"></script>
        <script>
            function myFunction() {
                var element = document.getElementById("trang-chu");
                element.classList.add("active");
                element.classList.add("active-menu");
            }
            myFunction();
        </script>
    </body>
</html>
