<%-- 
    Document   : movie-list
    Created on : Jun 29, 2021, 8:24:36 PM
    Author     : ngotu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from iqonic.design/themes/streamitnew/dashboard/html/theme/movie-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Sep 2020 07:05:34 GMT -->
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Movie List</title>
        <!-- Favicon -->
        <link rel="shortcut icon" href="https://iqonic.design/themes/streamitnew/dashboard/html/assets/images/favicon.ico" />
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/dataTables.bootstrap4.min.css">
        <!-- Typography CSS -->
        <link rel="stylesheet" href="assets/css/typography.css">
        <!-- Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="assets/css/responsive.css">
    </head>

    <body>
        <!-- loader Start -->
        <div id="loading">
            <div id="loading-center">
            </div>
        </div>
        <!-- loader END -->
        <!-- Wrapper Start -->
        <div class="wrapper">
            <!-- Sidebar  -->
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
                                            <h4 class="card-title">Movie Lists</h4>
                                        </div>
                                        <div class="iq-card-header-toolbar d-flex align-items-center">
                                            <a href="add-movie.html" class="btn btn-primary">Add movie</a>
                                        </div>
                                    </div>
                                    <div class="iq-card-body">
                                        <div class="table-view">
                                            <table class="data-tables table movie_table " style="width:100%">
                                                <thead>
                                                    <tr>
                                                        <th>Title</th>
                                                        <th>Description</th>
                                                        <th>Link</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="media align-items-center">
                                                                <div class="iq-movie">
                                                                    <a href="javascript:void(0);"><img
                                                                            src="../assets/images/movie-thumb/06.jpg"
                                                                            class="img-border-radius avatar-40 img-fluid" alt=""></a>
                                                                </div>
                                                                <div class="media-body text-white text-left ml-3">
                                                                    <p class="mb-0">Champions</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Đây là mô tả cho kênh tv</td>
                                                        <td>https://livecdn.fptplay.net/hda1/vtv1hd_hls.smil/chunklist_b2500000.m3u8</td>
                                                        <td>
                                                            <div class="flex align-items-center list-user-action">
                                                                <a class="iq-bg-warning" data-toggle="tooltip" data-placement="top" title=""
                                                                   data-original-title="View" href="#"><i class="lar la-eye"></i></a>
                                                                <a class="iq-bg-success" data-toggle="tooltip" data-placement="top" title=""
                                                                   data-original-title="Edit" href="#"><i class="ri-pencil-line"></i></a>
                                                                <a class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title=""
                                                                   data-original-title="Delete" href="#"><i
                                                                        class="ri-delete-bin-line"></i></a>
                                                            </div>
                                                        </td>
                                                    </tr>
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
    </body>
</html>
