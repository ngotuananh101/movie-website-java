<%-- 
    Document   : index
    Created on : Jun 3, 2021, 7:58:57 PM
    Author     : ngotu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="common/count.jsp" ></jsp:include>
        <!-- Required meta tags -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Netflix by Tuan Anh</title>
        <!-- Favicon -->
        <link rel="shortcut icon" href="common/images/favicon.ico"/>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="common/css/bootstrap.min.css"/>
        <!-- Typography CSS -->
        <link rel="stylesheet" href="common/css/typography.css">
        <!-- Style -->
        <link rel="stylesheet" href="common/css/style.css"/>
        <!-- Responsive -->
        <link rel="stylesheet" href="common/css/responsive.css"/>
        <!-- Fontawesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
        <style>
            #inputEmail{
                color: black;
                background-color: white;
            }
            #btnLogin{
                height: 75px;
                font-size: 30px;
            }
            input:focus ~ .floating-label,
            input:not(:focus):valid ~ .floating-label{
                top: 8px;
                bottom: 10px;
                left: 20px;
                font-size: 12px;
                opacity: 1;
            }

            .inputText {
                font-size: 20px;
                height: 75px;
            }

            .floating-label {
                position: absolute;
                pointer-events: none;
                left: 20px;
                top: 20px;
                transition: 0.2s ease all;
            }
        </style>
    </head>
    <body>

        <!-- loader Start -->
        <!-- <div id="loading">
           <div id="loading-center">
           </div>
        </div> -->
        <!-- loader END -->

        <!-- Header -->
        <header id="main-header">
            <div class="main-header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <nav class="navbar navbar-expand-lg navbar-light p-0">
                                <a href="#" class="navbar-toggler c-toggler" data-toggle="collapse"
                                   data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                                   aria-label="Toggle navigation">
                                    <div class="navbar-toggler-icon" data-toggle="collapse">
                                        <span class="navbar-menu-icon navbar-menu-icon--top"></span>
                                        <span class="navbar-menu-icon navbar-menu-icon--middle"></span>
                                        <span class="navbar-menu-icon navbar-menu-icon--bottom"></span>
                                    </div>
                                </a>
                                <a class="navbar-brand" href="index.html"> <img class="img-fluid logo" src="common/images/logo.png"
                                                                                alt="streamit" /> </a>
                                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                                </div>
                                <div class="mobile-more-menu">
                                    <button type="submit" class="btn btn-hover">Sign in</button>
                                </div>
                                <div class="navbar-right menu-right">
                                    <ul class="d-flex align-items-center list-inline m-0">
                                        <li class="nav-item nav-icon">
                                            <a href="login"><button class="btn btn-hover">Sign in</button></a> 
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                            <div class="nav-overlay"></div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header End -->

        <!-- MainContent -->
        <section class="sign-in-page">
            <div class="container">
                <div class="row justify-content-center align-items-center height-self-center">
                    <div class="col-lg-8 col-md-12 align-self-center">
                        <h1 style="text-align: center;font-size: 64px;">Chương trình truyền hình, phim không giới hạn và nhiều nội dung khác.</h1><br/>
                        <h3 style="text-align: center;">Xem ở mọi nơi. Hủy bất kỳ lúc nào.</h3><br/>
                        <form class="row" action="login" method="GET">
                            <div class="col-12 mb-3">
                                <h5 style="text-align: center;">Bạn đã sẵn sàng xem chưa? Nhập email để tạo hoặc kích hoạt lại tư cách thành viên của bạn.</h5>
                            </div>
                            <div class="col-12 col-sm pr-sm-0">
                                <input type="text" name="email" id="inputEmail" class="form-control input-lg inputText" autocomplete="email" required>
                                <span class="floating-label">Your email address</span>
                            </div>
                            <div class="col-12 col-sm-auto pl-sm-0">
                                <a href="login"><button type="submit" class="btn btn-hover" id="btnLogin">Sign in <i class="fas fa-chevron-right"></i></button></a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- MainContent End-->

        <!-- back-to-top End -->
        <!-- jQuery, Popper JS -->
        <script src="common/js/jquery-3.4.1.min.js"></script>
        <script src="common/js/popper.min.js"></script>
        <!-- Bootstrap JS -->
        <script src="common/js/bootstrap.min.js"></script>
        <!-- Slick JS -->
        <script src="common/js/slick.min.js"></script>
        <!-- owl carousel Js -->
        <script src="common/js/owl.carousel.min.js"></script>
        <!-- select2 Js -->
        <script src="common/js/select2.min.js"></script>
        <!-- Magnific Popup-->
        <script src="common/js/jquery.magnific-popup.min.js"></script>
        <!-- Slick Animation-->
        <script src="common/js/slick-animation.min.js"></script>
        <!-- Custom JS-->
        <script src="common/js/custom.js"></script>
    </body>
</html>
