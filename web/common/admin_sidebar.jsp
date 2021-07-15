<%-- 
    Document   : admin_sidebar
    Created on : Jun 19, 2021, 6:26:29 AM
    Author     : ngotu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Sidebar-->
<div class="iq-sidebar">
    <div class="iq-sidebar-logo d-flex justify-content-between">
        <a href="../web" class="header-logo">
            <!--               <img src="../assets/images/logo.png" class="img-fluid rounded-normal" alt="">-->
            <div class="logo-title">
                <span class="text-primary text-uppercase">Netflix</span>
            </div>
        </a>
        <div class="iq-menu-bt-sidebar">
            <div class="iq-menu-bt align-self-center">
                <div class="wrapper-menu">
                    <div class="main-circle"><i class="las la-bars"></i></div>
                </div>
            </div>
        </div>
    </div>
    <div id="sidebar-scrollbar">
        <nav class="iq-sidebar-menu">
            <ul id="iq-sidebar-toggle" class="iq-menu">
                <li><a href="../web" class="text-primary"><i class="ri-arrow-right-line"></i><span>Visit site</span></a></li>
                <li id="trang-chu"><a href="../admin/index.jsp" class="iq-waves-effect"><i class="las la-home iq-arrow-left"></i><span>Dashboard</span></a></li>
                <!--                  <li><a href="rating.html" class="iq-waves-effect"><i class="las la-star-half-alt"></i><span>Rating </span></a></li>-->
                <!--                  <li><a href="comment.html" class="iq-waves-effect"><i class="las la-comments"></i><span>Comment</span></a></li>-->
                <li id="i-user"><a href="user.jsp" class="iq-waves-effect"><i class="las la-user-friends"></i><span>User</span></a></li>
                <li id="i-category">
                    <a href="#category" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="las la-list-ul"></i><span>Category</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                    <ul id="category" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
<!--                        <li><a href="../admin/add-category.jsp"><i class="las la-user-plus"></i>Add Category</a></li>-->
                        <li><a href="../add?type=importcategory"><i class="las la-user-plus"></i>Import Category from TMDB</a></li>
                        <li><a href="../admin/category-list.jsp"><i class="las la-eye"></i>Category List</a></li>
                    </ul>
                </li>
                <li id="i-movie">
                    <a href="#movie" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="las la-film"></i><span>Movie</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                    <ul id="movie" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                        <li><a href="../admin/add-movie.jsp"><i class="las la-user-plus"></i>Add Movie</a></li>
                        <li><a href="../admin/add-movie2.jsp"><i class="las la-user-plus"></i>TMDB Add Movie</a></li>
                        <li><a href="../admin/movie-list.jsp"><i class="las la-eye"></i>Movie List</a></li>
                        
                    </ul>
                </li>
                <li id="i-live-tv">
                    <a href="#show" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i
                            class="las la-film"></i><span>Live TV</span><i
                            class="ri-arrow-right-s-line iq-arrow-right"></i>
                    </a>
                    <ul id="show" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                        <li><a href="../admin/add-tv-channel.jsp"><i class="las la-user-plus"></i>Add TV Channel</a></li>
                        <li><a href="../admin/tv-channel-list.jsp"><i class="las la-eye"></i>TV List</a></li>
                    </ul>
                </li>
                <li id="i-pricing"><a href="../admin/pricing.jsp" class="iq-waves-effect"><i class="ri-price-tag-line"></i><span>Pricing</span></a></li>
            </ul>
        </nav>
    </div>
</div>
