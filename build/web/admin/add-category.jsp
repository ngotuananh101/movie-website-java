<%-- 
    Document   : add-category
    Created on : Jun 29, 2021, 8:03:06 PM
    Author     : ngotu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Add Category</title>
        <!-- Favicon -->
        <link rel="shortcut icon" href="https://iqonic.design/themes/streamitnew/dashboard/html/assets/images/favicon.ico" />
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../admin/assets/css/bootstrap.min.css" />
        <!--datatable CSS -->
        <link rel="stylesheet" href="../admin/assets/css/dataTables.bootstrap4.min.css" />
        <!-- Typography CSS -->
        <link rel="stylesheet" href="../admin/assets/css/typography.css" />
        <!-- Style CSS -->
        <link rel="stylesheet" href="../admin/assets/css/style.css" />
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="../admin/assets/css/responsive.css" />
        <!-- Sweetalert 2 -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>

    <body>
        <!-- loader Start -->
        <!--        <div id="loading">
                    <div id="loading-center">
                    </div>
                </div>-->
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
                            <div class="col-sm-12">
                                <div class="iq-card">
                                    <div class="iq-card-header d-flex justify-content-between">
                                        <div class="iq-header-title">
                                            <h4 class="card-title">Add Category</h4>
                                        </div>
                                    </div>
                                    <div class="iq-card-body">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <form action="../add?type=category" method="POST">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="Name" name="name">
                                                    </div>
                                                    <div class="form-group">
                                                        <textarea id="text" name="des" rows="5" class="form-control"
                                                                  placeholder="Description"></textarea>
                                                    </div>
                                                    <div class="form-group ">
                                                        <button type="submit" class="btn btn-primary">Submit</button>
                                                        <button type="reset" class="btn btn-danger">cancel</button>
                                                    </div>
                                                </form>
                                            </div>
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
        <script src="../admin/assets/js/jquery.min.js"></script>
        <script src="../admin/assets/js/popper.min.js"></script>
        <script src="../admin/assets/js/bootstrap.min.js"></script>
        <!-- Appear JavaScript -->
        <script src="../admin/assets/js/jquery.appear.js"></script>
        <!-- Countdown JavaScript -->
        <script src="../admin/assets/js/countdown.min.js"></script>
        <!-- Counterup JavaScript -->
        <script src="../admin/assets/js/waypoints.min.js"></script>
        <script src="../admin/assets/js/jquery.counterup.min.js"></script>
        <!-- Wow JavaScript -->
        <script src="../admin/assets/js/wow.min.js"></script>
        <!-- Select2 JavaScript -->
        <script src="../admin/assets/js/select2.min.js"></script>
        <!-- Slick JavaScript -->
        <script src="../admin/assets/js/slick.min.js"></script>
        <!-- Owl Carousel JavaScript -->
        <script src="../admin/assets/js/owl.carousel.min.js"></script>
        <!-- Magnific Popup JavaScript -->
        <script src="../admin/assets/js/jquery.magnific-popup.min.js"></script>
        <!-- Smooth Scrollbar JavaScript -->
        <script src="../admin/assets/js/smooth-scrollbar.js"></script>
        <!-- Chart Custom JavaScript -->
        <script src="../admin/assets/js/chart-custom.js"></script>
        <!-- Custom JavaScript -->
        <script src="../admin/assets/js/custom.js"></script>
    </body>
</html>
