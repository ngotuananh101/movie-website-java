<%-- 
    Document   : watch
    Created on : Jul 14, 2021, 1:51:14 AM
    Author     : ngotu
--%>

<%@page import="com.tuananh.model.LiveTV"%>
<%@page import="com.tuananh.dal.LiveTvDAO"%>
<%@page import="com.tuananh.dal.CategoryDAO"%>
<%@page import="com.tuananh.model.Movie"%>
<%@page import="com.tuananh.dal.MovieDAO"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en-US">
    <%
        System.out.println("Alooooooooooooooooooo");
        if (request.getParameter("type") != null) {
            String type = request.getParameter("type");
            System.out.println("Type: " + type);
            pageContext.setAttribute("type", type);
            if (type.equalsIgnoreCase("movie")) {
                MovieDAO md = new MovieDAO();
                CategoryDAO cd = new CategoryDAO();
                int id = Integer.parseInt(request.getParameter("id"));
                Movie mv = md.getMovieInfo(id);
                System.out.println("Movie Link: " + mv.getVideo_link());
                int year = mv.getYear(mv.getRelease_date());
                String category = cd.getCategory(mv.getCategory_id()).getName();
                pageContext.setAttribute("year", year);
                pageContext.setAttribute("movie", mv);
                pageContext.setAttribute("category", category);
            }
            if (type.equalsIgnoreCase("tv")) {
                LiveTvDAO ld = new LiveTvDAO();
                int id = Integer.parseInt(request.getParameter("id"));
                LiveTV tv = ld.getChannel(id);
                pageContext.setAttribute("tv", tv);
            }
        }
    %>
    <head>
        <!-- Required meta tags -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <c:choose>
            <c:when test="${type == 'movie'}">
                <title>${movie.getTitle()} | Movie | Netflix</title>
            </c:when>
            <c:when test="${type == 'tv'}">
                <title>${tv.getTitle()}  | TV Channel | Netflix</title>
            </c:when>
        </c:choose>
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
        <!--   <div id="loading">
              <div id="loading-center">
              </div>
           </div>-->
        <!-- Header -->
        <jsp:include page="../common/web/header.jsp" ></jsp:include>
            <!-- Header End -->
            <!-- Banner Start -->
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg align-self-center">
                        <div class="video-container iq-main-slider d-flex justify-content-center" style="height: 100%;width: 100%">
                        <c:choose>
                            <c:when test="${type == 'movie'}">
                                <jsp:include page="../common/jwplayer.jsp?link=${movie.getVideo_link()}" ></jsp:include>
                            </c:when>
                            <c:when test="${type == 'tv'}">
                                <jsp:include page="../common/jwplayer.jsp?link=${tv.getLink()}" ></jsp:include>
                            </c:when>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>     
        <!-- Banner End -->
        <!-- MainContent -->
        <div class="main-content movi">
            <section class="movie-detail container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <c:choose>
                            <c:when test="${type == 'movie'}">
                                <div class="trending-info g-border">
                                    <h1 class="trending-text big-title text-uppercase mt-0">${movie.getTitle()}</h1>
                                    <ul class="p-0 list-inline d-flex align-items-center movie-content">
                                        <li class="text-white">${category}</li>
                                    </ul>
                                    <div class="d-flex align-items-center text-white text-detail">
                                        <span class="badge badge-secondary p-3">${movie.getVote_average() }</span>
                                        <span class="ml-3">${movie.getRuntime() } minutes</span>
                                        <span class="trending-year">${year }</span>
                                    </div>
                                    <h4>Overview</h4>
                                    <p class="trending-dec w-100 mb-0">${movie.getOverview() }</p>
                                    <ul class="list-inline p-0 mt-4 share-icons music-play-lists">
                                        <li class="share">
                                            <span><i class="ri-share-fill"></i></span>
                                            <div class="share-box">
                                                <div class="d-flex align-items-center">
                                                    <a href="#" class="share-ico"><i class="ri-facebook-fill"></i></a>
                                                    <a href="#" class="share-ico"><i class="ri-twitter-fill"></i></a>
                                                    <a href="#" class="share-ico"><i class="ri-links-fill"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </c:when>
                            <c:when test="${type == 'tv'}">
                                <div class="trending-info g-border">
                                    <h1 class="trending-text big-title text-uppercase mt-0">${tv.getTitle()}</h1>
                                    <ul class="p-0 list-inline d-flex align-items-center movie-content">
                                        <li class="text-white">${category}</li>
                                    </ul>
                                    <h4>Overview</h4>
                                    <p class="trending-dec w-100 mb-0">${tv.getDes() }</p>
                                    <ul class="list-inline p-0 mt-4 share-icons music-play-lists">
                                        <li class="share">
                                            <span><i class="ri-share-fill"></i></span>
                                            <div class="share-box">
                                                <div class="d-flex align-items-center">
                                                    <a href="#" class="share-ico"><i class="ri-facebook-fill"></i></a>
                                                    <a href="#" class="share-ico"><i class="ri-twitter-fill"></i></a>
                                                    <a href="#" class="share-ico"><i class="ri-links-fill"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </c:when>
                        </c:choose>
                    </div>
                </div>
            </section>
            <section id="iq-comment" class="s-margin">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12 overflow-hidden">
                            <div class="iq-main-header d-flex align-items-center justify-content-between">
                                <h4 class="main-title">Comment</h4>
                            </div>
                            <div id="disqus_thread"></div>
                            <script>
                                /**
                                 *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
                                 *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
                                /*
                                 var disqus_config = function () {
                                 this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
                                 this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
                                 };
                                 */
                                (function () { // DON'T EDIT BELOW THIS LINE
                                    var d = document, s = d.createElement('script');
                                    s.src = 'https://ntanetflix.disqus.com/embed.js';
                                    s.setAttribute('data-timestamp', +new Date());
                                    (d.head || d.body).appendChild(s);
                                })();
                            </script>
                            <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
                        </div>
                    </div>
                </div>
            </section>
        </div>
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
        <!-- Slick Animation-->
        <script src="../common/js/slick-animation.min.js"></script>
        <!-- Custom JS-->
        <script src="../common/js/custom.js"></script>

    </body>
</html>
