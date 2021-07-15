<%-- 
    Document   : index.jsp
    Created on : Jun 4, 2021, 12:21:51 AM
    Author     : ngotu
--%>

<%@page import="com.tuananh.dal.HomeDAO"%>
<%@page import="com.tuananh.model.User"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Home - Netflix</title>
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
        <%
            int id = 1;
            User u = (User) session.getAttribute("user");
            pageContext.setAttribute("userinfo", u);
            HomeDAO hd = new HomeDAO();
            pageContext.setAttribute("randommovie", hd.getRandomMovie());
            pageContext.setAttribute("newmovie", hd.getNewMovie());
            pageContext.setAttribute("top10movie", hd.getTop10Movie());
            pageContext.setAttribute("tvchannel", hd.getChannel());
        %>
        <!-- loader Start -->
<!--        <div id="loading">
            <div id="loading-center">
            </div>
        </div>-->
        <!-- loader END -->
        <!-- Header -->
        <jsp:include page="../common/web/header.jsp" ></jsp:include>
            <!-- Header End -->
            <!-- Slider Start -->
            <section id="home" class="iq-main-slider p-0">
                <div id="home-slider" class="slider m-0 p-0">
                <c:forEach items="${randommovie}" var="rd">
                    <div class="slide slick-bg s-bg-<%=id++%>" style="background-image: url('${rd.getBackdrop() }')">
                        <div class="container-fluid position-relative h-100">
                            <div class="slider-inner h-100">
                                <div class="row align-items-center  h-100">
                                    <div class="col-xl-6 col-lg-12 col-md-12">
                                        <a href="javascript:void(0);">
                                            <div class="channel-logo" data-animation-in="fadeInLeft" data-delay-in="0.5">
                                                <img src="../common/images/logo.png" class="c-logo" alt="tuananh">
                                            </div>
                                        </a>
                                        <h1 class="slider-text big-title title text-uppercase" data-animation-in="fadeInLeft"
                                            data-delay-in="0.6">${rd.getTitle() }</h1>
                                        <div class="d-flex align-items-center" data-animation-in="fadeInUp" data-delay-in="1">
                                            <span class="badge badge-secondary p-2">${rd.getVote_average() }</span>
                                            <span class="ml-3">${rd.getRuntime() } minutes</span>
                                        </div>
                                        <p data-animation-in="fadeInUp" data-delay-in="1.2">${rd.getOverview() }</p>
                                        <div class="d-flex align-items-center r-mb-23" data-animation-in="fadeInUp" data-delay-in="1.2">
                                            <a href="watch.jsp?type=movie&id=${rd.getId() }" class="btn btn-hover"><i class="fa fa-play mr-2"
                                                                                                 aria-hidden="true"></i>Play Now</a>
                                            <a href="show-details.html" class="btn btn-link">More details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
            <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 44" width="44px" height="44px" id="circle"
                    fill="none" stroke="currentColor">
                <circle r="20" cy="22" cx="22" id="test"></circle>
            </symbol>
            </svg>
        </section>
        <!-- Slider End -->
        <!-- MainContent -->
        <div class="main-content">
            <!--New movie content-->
            <section id="nf-newmovie">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12 overflow-hidden">
                            <div class="iq-main-header d-flex align-items-center justify-content-between">
                                <h4 class="main-title"><a href="#">New Movies</a></h4>                      
                            </div>
                            <div class="favorites-contens">
                                <ul class="favorites-slider list-inline  row p-0 mb-0">
                                    <c:forEach items="${newmovie}" var="new">
                                        <li class="slide-item">
                                            <a href="watch.jsp?type=movie&id=${new.getId() }">
                                                <div class="block-images position-relative">
                                                    <div class="img-box">
                                                        <img src="${new.getBackdrop() }" class="img-fluid" alt="">
                                                    </div>
                                                    <div class="block-description">
                                                        <h6>${new.getTitle() }</h6>
                                                        <div class="movie-time d-flex align-items-center my-2">
                                                            <div class="badge badge-secondary p-1 mr-2">${new.getVote_average() }</div>
                                                            <span class="text-white">${new.getRuntime() } Minutes</span>
                                                        </div>
                                                        <div class="hover-buttons">
                                                            <span class="btn btn-hover">
                                                                <i class="fa fa-play mr-1" aria-hidden="true"></i>
                                                                Play Now
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--Movie have high rate-->
            <section id="nf-highrate">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12 overflow-hidden">
                            <div class="iq-main-header d-flex align-items-center justify-content-between">
                                <h4 class="main-title"><a href="#">High Rate</a></h4>                      
                            </div>
                            <div class="favorites-contens">
                                <ul class="favorites-slider list-inline  row p-0 mb-0">
                                    <c:forEach items="${top10movie}" var="top10">
                                        <li class="slide-item">
                                            <a href="watch.jsp?type=movie&id=${top10.getId() }">
                                                <div class="block-images position-relative">
                                                    <div class="img-box">
                                                        <img src="${top10.getBackdrop() }" class="img-fluid" alt="">
                                                    </div>
                                                    <div class="block-description">
                                                        <h6>${top10.getTitle() }</h6>
                                                        <div class="movie-time d-flex align-items-center my-2">
                                                            <div class="badge badge-secondary p-1 mr-2">${top10.getVote_average() }</div>
                                                            <span class="text-white">${top10.getRuntime() } Minutes</span>
                                                        </div>
                                                        <div class="hover-buttons">
                                                            <span class="btn btn-hover">
                                                                <i class="fa fa-play mr-1" aria-hidden="true"></i>
                                                                Play Now
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--TV Channel-->
            <section id="nf-tvchannel">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12 overflow-hidden">
                            <div class="iq-main-header d-flex align-items-center justify-content-between">
                                <h4 class="main-title"><a href="#">TV Channel</a></h4>                      
                            </div>
                            <div class="favorites-contens">
                                <ul class="favorites-slider list-inline  row p-0 mb-0">
                                    <c:forEach items="${tvchannel}" var="tv">
                                        <li class="slide-item">
                                            <a href="watch.jsp?type=tv&id=${tv.getId() }">
                                                <div class="block-images position-relative">
                                                    <div class="img-box">
                                                        <img src="${tv.getImage() }" class="img-fluid" alt="">
                                                    </div>
                                                    <div class="block-description">
                                                        <h6>${tv.getTitle() }</h6>
                                                        <div class="hover-buttons">
                                                            <span class="btn btn-hover">
                                                                <i class="fa fa-play mr-1" aria-hidden="true"></i>
                                                                Play Now
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <!--Footer-->
        <jsp:include page="../common/web/footer.jsp" ></jsp:include>
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
        <!-- Slick Animation-->
        <script src="../common/js/slick-animation.min.js"></script>
        <!-- Custom JS-->
        <script src="../common/js/custom.js"></script>
    </body>
</html>
