<%-- 
    Document   : register
    Created on : Jun 3, 2021, 1:13:42 PM
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
        <title>Register - Netflix</title>
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
                                    <h3 class="mb-3 text-center">Sign Up</h3>
                                    <form class="mt-4" action="register" method="POST">
                                        <div class="form-group">                                 
                                            <input type="text" class="form-control mb-0" placeholder="Full Name" name="fullname" required>
                                        </div>
                                        <div class="form-group">                                 
                                            <input type="text" class="form-control mb-0" placeholder="Username" name="username" required>
                                        </div>
                                        <div class="form-group">                                 
                                            <input type="email" class="form-control mb-0" placeholder="Email address" name="email" required>
                                        </div>
                                        <div class="form-group">                                 
                                            <input type="password" class="form-control mb-0" placeholder="Password" name="password" required>
                                        </div>  
                                        <div class="custom-control custom-checkbox mb-3">
                                            <input type="checkbox" class="custom-control-input" id="customCheck" required>
                                            <label class="custom-control-label" for="customCheck">I accept <a href="#" class="text-primary"> Terms and Conditions</a></label>
                                        </div>                      
                                        <p style="color: red"> ${requestScope.errorregister1} </p>  
                                        <button type="submit" class="btn btn-hover">Sign Up</button>

                                    </form>
                                </div>
                            </div>    
                            <div class="mt-3">
                                <div class="d-flex justify-content-center links">
                                    Already have an account? <a href="login" class="text-primary ml-2">Sign In</a>
                                </div>                        
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- MainContent End-->
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
