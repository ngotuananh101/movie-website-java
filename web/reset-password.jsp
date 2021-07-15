<%-- 
    Document   : reset-password
    Created on : Jun 4, 2021, 3:35:57 AM
    Author     : ngotu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Forgot Password - Netflix</title>
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
    </head>
    <body>
        <div id="loading">
            <div id="loading-center">
            </div>
        </div>

        <!-- MainContent -->
        <section class="sign-in-page">
            <div class="container">
                <div class="row justify-content-center align-items-center height-self-center">
                    <div class="col-lg-5 col-md-12 align-self-center">
                        <div class="sign-user_card ">                    
                            <div class="sign-in-page-data">
                                <div class="sign-in-from w-100 m-auto">
                                    <h3 class="mb-3 text-center">Reset Password</h3>
                                    <p class="text-body">Enter your email address and we'll send you an email with instructions to reset your password.</p>
                                    <form class="mt-4" action="index.html">
                                        <div class="form-group">                                 
                                            <input type="email" class="form-control mb-0" id="exampleInputEmail2" placeholder="Enter email" autocomplete="off" required>
                                        </div>                           
                                        <div class="sign-info">
                                            <button type="submit" class="btn btn-hover">Reset</button>                                                            
                                        </div>                                       
                                    </form>
                                </div>
                            </div>                    
                        </div>
                    </div>
                </div>
                <!-- Sign in END -->
                <!-- color-customizer -->
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
