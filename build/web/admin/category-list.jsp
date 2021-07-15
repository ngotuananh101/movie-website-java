<%-- 
    Document   : list-category
    Created on : Jun 29, 2021, 8:14:46 PM
    Author     : ngotu
--%>

<%@page import="com.tuananh.model.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.tuananh.dal.CategoryDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from iqonic.design/themes/streamitnew/dashboard/html/theme/category-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Sep 2020 07:05:34 GMT -->
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Category List</title>
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
        <%
            CategoryDAO cd = new CategoryDAO();
            List<Category> lc = cd.getAllCategory();
            pageContext.setAttribute("listcategory", lc);
        %>
        <!-- loader Start -->
        <!--   <div id="loading">
              <div id="loading-center">
              </div>
           </div>-->
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
                                            <h4 class="card-title">Category Lists</h4>
                                        </div>
                                        <div class="iq-card-header-toolbar d-flex align-items-center">
                                            <a href="add-category.jsp" class="btn btn-primary">Add Category</a>
                                        </div>
                                    </div>
                                    <div class="iq-card-body">
                                        <div class="table-view">
                                            <table class="data-tables table movie_table " style="width:100%">
                                                <thead>
                                                    <tr>
                                                        <th style="width:10%;">Id</th>
                                                        <th style="width:20%;">Name</th>
                                                        <th style="width:40%;">Description</th>
                                                        <th style="width:20%;">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${listcategory}" var="category">
                                                    <tr>
                                                        <td>${category.getId()}</td>
                                                        <td>${category.getName()}</td>
                                                        <td>
                                                            <p>${category.getDes() }</p>
                                                        </td>
                                                        <td>
                                                            <div class="flex align-items-center list-user-action">
                                                                <span data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit">
                                                                    <a class="iq-bg-success" data-toggle="modal" data-target="#categoryid${category.getId()}" href="#"><i class="ri-pencil-line"></i></a>
                                                                </span>
                                                                <a class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title=""
                                                                   data-original-title="Delete" href="../delete?type=category&id=${category.getId()}"><i
                                                                        class="ri-delete-bin-line"></i></a>
                                                            </div>
                                                            <!-- Modal -->
                                                            <div class="modal fade" id="categoryid${category.getId()}" tabindex="-1" role="dialog" aria-labelledby="Edit" aria-hidden="true">
                                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                                    <div class="modal-content">
                                                                        <div class="modal-header">
                                                                            <h5 class="modal-title" id="exampleModalLongTitle">Edit</h5>
                                                                            <!--                                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                                                                                            <span aria-hidden="true">&times;</span>
                                                                                                                                                        </button>-->
                                                                        </div>
                                                                        <form action="../edit?type=category&id=${category.getId()}" method="POST">
                                                                            <div class="modal-body">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="Name" name="name" value="${category.getName()}">
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="Description" name="des" value="${category.getDes()}">
                                                                                </div>
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                                <button type="submit" class="btn btn-primary">Save changes</button>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
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
        <script src="assets/js/hullabaloo.js"></script>

        <script type="text/javascript">
            var hulla = new hullabaloo();
            hulla.send("jQueryScript.Net", "success");
            hulla.send("jQuery Hullabaloo.js Plugin Examples", "info");
            hulla.send("A Bootstrap 4 Notification Plugin", "warning");
        </script>
    </body>
</html>
