<%-- 
    Document   : add-movie
    Created on : Jun 29, 2021, 8:24:15 PM
    Author     : ngotu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <!-- Required meta tags -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>Add Movie</title>
   <!-- Favicon -->
   <link rel="shortcut icon" href="https://iqonic.design/themes/streamitnew/dashboard/html/assets/images/favicon.ico" />
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
                           <h4 class="card-title">Add Live TV</h4>
                        </div>
                     </div>
                     <div class="iq-card-body">
                         <form action="../add?type=livetv" method="POST" enctype="multipart/form-data">
                           <div class="row">
                              <div class="col-lg-12">
                                 <div class="row">
                                    <div class="col-12 form-group">
                                        <input type="text" class="form-control" placeholder="Title" name="title">
                                    </div>
                                    <div class="col-12 form_gallery form-group">
                                       <label id="gallery2" for="form_gallery-upload">Upload Image</label>
                                       <input id="form_gallery-upload file" class="form_gallery-upload" accept=".png, .jpg, .jpeg" type="file" name="file">
                                    </div>
                                    <div class="col-12 form-group">
                                       <textarea id="text" name="des" rows="5" class="form-control"
                                          placeholder="Description"></textarea>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="row">
                              <div class="col-sm-12 form-group">
                                  <input type="text" class="form-control" name="link" placeholder="Link live tv" value="http://">
                              </div>
                              <div class="col-12 form-group ">
                                 <button type="submit" class="btn btn-primary">Submit</button>
                                 <button type="reset" class="btn btn-danger">cancel</button>
                              </div>
                           </div>
                        </form>
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
   <!-- Appear JavaScript -->
   <script src="assets/js/jquery.appear.js"></script>
   <!-- Countdown JavaScript -->
   <script src="assets/js/countdown.min.js"></script>
   <!-- Counterup JavaScript -->
   <script src="assets/js/waypoints.min.js"></script>
   <script src="asets/js/jquery.counterup.min.js"></script>
   <!-- Wow JavaScript -->
   <script src="assets/js/wow.min.js"></script>
   <!-- Select2 JavaScript -->
   <script src="assets/js/select2.min.js"></script>
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
